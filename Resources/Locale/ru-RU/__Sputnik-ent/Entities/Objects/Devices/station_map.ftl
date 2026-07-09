ent-BaseHandheldStationMap = station map
    .desc = Displays a readout of the current station.

ent-HandheldStationMap = { ent-BaseHandheldStationMap }
    .desc = { ent-BaseHandheldStationMap.desc }
    .suffix = Handheld

ent-HandheldStationMapEmpty = { ent-HandheldStationMap }
    .desc = { ent-HandheldStationMap.desc }
    .suffix = Handheld, Empty

ent-HandheldStationMapUnpowered = { ent-BaseHandheldStationMap }
    .desc = { ent-BaseHandheldStationMap.desc }
    .suffix = Handheld, Always Powered

ent-HandheldStationMapStatic = { ent-HandheldStationMap }
    .desc = { ent-HandheldStationMap.desc }
    .suffix = Handheld, Works Off-Station

ent-HandheldStationMapNukeops = target station map
    .desc = Displays a readout of the target station.
    .suffix = Handheld, NukeOps