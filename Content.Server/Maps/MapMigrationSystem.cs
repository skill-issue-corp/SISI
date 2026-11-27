using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using Robust.Shared.ContentPack;
using Robust.Shared.EntitySerialization.Systems;
using Robust.Shared.Map.Events;
using Robust.Shared.Prototypes;
using Robust.Shared.Serialization.Markdown;
using Robust.Shared.Serialization.Markdown.Mapping;
using Robust.Shared.Serialization.Markdown.Value;
using Robust.Shared.Utility;

namespace Content.Server.Maps;

/// <summary>
///     Performs basic map migration operations by listening for engine <see cref="MapLoaderSystem"/> events.
/// </summary>
public sealed partial class MapMigrationSystem : EntitySystem
{
    [Dependency] private IResourceManager _resMan = default!;

    // private const string MigrationFile = "/migration.yml"; // SIS-Migration
    private readonly List<string> MigrationFiles = ["/migration.yml", "/migrationSIS.yml"]; // SIS-Migration

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<BeforeEntityReadEvent>(OnBeforeReadEvent);

#if DEBUG
        // SIS-Migration Start
        foreach (var migrationFile in MigrationFiles)
        {
            if (!TryReadFile(migrationFile, out var mappings))
                continue;

            // Verify that all of the entries map to valid entity prototypes.
            foreach (var node in mappings.Children.Values)
            {
                var newId = ((ValueDataNode) node).Value;
                if (!string.IsNullOrEmpty(newId) && newId != "null")
                    DebugTools.Assert(ProtoMan.HasIndex<EntityPrototype>(newId), $"{newId} is not an entity prototype.");
            }
        }
        // SIS-Migration End
#endif
    }

    private bool TryReadFile(string migrationFile, [NotNullWhen(true)] out MappingDataNode? mappings) // SIS-Migration
    {
        mappings = null;
        var path = new ResPath(migrationFile); // SIS-Migration
        if (!_resMan.TryContentFileRead(path, out var stream))
            return false;

        using var reader = new StreamReader(stream, EncodingHelpers.UTF8);
        var documents = DataNodeParser.ParseYamlStream(reader).FirstOrDefault();

        if (documents == null)
            return false;

        mappings = (MappingDataNode) documents.Root;
        return true;
    }

    private void OnBeforeReadEvent(BeforeEntityReadEvent ev)
    {
        // SIS-Migration Start
        foreach (var migrationFile in MigrationFiles)
        {
            if (!TryReadFile(migrationFile, out var mappings))
                continue;

            foreach (var (key, value) in mappings)
            {
                if (value is not ValueDataNode valueNode)
                    continue;

                if (string.IsNullOrWhiteSpace(valueNode.Value) || valueNode.Value == "null")
                {
                    ev.DeletedPrototypes.Add(key);
                    ev.RenamedPrototypes.Remove(key);
                }
                else
                {
                    ev.DeletedPrototypes.Remove(key);
                    ev.RenamedPrototypes[key] = valueNode.Value;
                }
            }
        }
        // SIS-Migration End
    }
}
