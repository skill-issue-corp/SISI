// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.DeviceLinking;
using Content.Factory.Shared.Filters;

namespace Content.Factory.Shared.Circuits;

#region Values

/// <summary>
/// Types of values a circuit gate can work with.
/// </summary>
[Serializable, NetSerializable]
public enum GateValue : byte
{
    Bool,
    Int,
    Number,
    String,
    Any
}

// need these wrapper classes because reflection manager yml tag lookup is broken and refuses to use structs like Int32 or Boolean...
[DataDefinition, Serializable, NetSerializable]
public sealed partial class True
{
    public override string ToString() => "true";

    public static readonly True Instance = new();
}

[DataDefinition, Serializable, NetSerializable]
public sealed partial class False
{
    public override string ToString() => "false";

    public static readonly False Instance = new();
}

[DataDefinition, Serializable, NetSerializable]
public sealed partial class Pulse
{
    public override string ToString() => "pulse";

    public static readonly Pulse Instance = new();
}

/// <summary>
/// Float wrapper used by circuits
/// </summary>
[DataRecord, Serializable, NetSerializable]
public sealed partial class Number
{
    public Number()
    {
    }

    public Number(int value) : this((float) value)
    {
    }

    public Number(float value)
    {
        Value = value;
    }

    public float Value;

    public bool IsNaN => Single.IsNaN(Value);

    public override string ToString()
        => Value.ToString();

    public override bool Equals(object? obj)
        => obj is Number n && n.Value == Value;

    public override int GetHashCode()
        => Value.GetHashCode();

    public static readonly Number Zero = new();
}

#endregion

#region Base CircuitGate

/// <summary>
/// Any kind of gate that can produce an output as part of a circuit in <see cref="CircuitData"/>.
/// </summary>
[ImplicitDataDefinitionForInheritors]
[Serializable, NetSerializable]
public abstract partial class CircuitGate
{
    /// <summary>
    /// Max distance from the center a gate can be placed at.
    /// </summary>
    public static readonly Vector2 MaxOffset = new Vector2(500f, 500f);

    // TODO: make custom serializer for it
    /// <summary>
    /// Only these C# types are allowed for output values.
    /// </summary>
    private static Type[] AllowedTypes =
    [
        typeof(True),
        typeof(False),
        typeof(Pulse),
        typeof(Number),
        typeof(String)
    ];

    /// <summary>
    /// The circuit input indices of this gate.
    /// </summary>
    [DataField]
    public List<CircuitIndex> Inputs = new();

    // have to make this nullable because serialization generator is dogshit and doesnt support just plain object
    [DataField("output")]
    private object? _output;

    /// <summary>
    /// The last output of this gate.
    /// </summary>
    public object Output => _output ?? False.Instance;

    /// <summary>
    /// Where it is in the editor UI.
    /// </summary>
    [DataField]
    public Vector2 Pos = Vector2.Zero;

    /// <summary>
    /// Dynamically built circuit output indices which depend on this gate's output.
    /// </summary>
    [ViewVariables]
    public List<CircuitIndex> LinkedOutputs = new();

    /// <summary>
    /// Set up a valid output value for this gate.
    /// Called after creating a new gate or importing a circuit.
    /// </summary>
    public void Initialize()
    {
        if (_output?.GetType() is { } type && !AllowedTypes.Contains(type))
            _output = null;
        _output ??= OutputType switch
        {
            GateValue.Int => Number.Zero,
            GateValue.Number => Number.Zero,
            GateValue.String => string.Empty,
            _ => False.Instance
        };
    }

    /// <summary>
    /// User-facing name of this gate
    /// </summary>
    public abstract string Name { get; }

    /// <summary>
    /// Category used in the UI to sort gates.
    /// If this is empty, it will not be listed in the picker.
    /// </summary>
    public abstract string Category { get; }

    /// <summary>
    /// User-facing tooltop if this gate, shown on hover.
    /// </summary>
    public abstract string Desc { get; }

    /// <summary>
    /// Type of value this gate can output.
    /// </summary>
    public abstract GateValue OutputType { get; }

    /// <summary>
    /// How many inputs this gate has.
    /// </summary>
    public abstract int InputCount { get; }

    /// <summary>
    /// Update output based on inputs and other gates of a circuit.
    /// </summary>
    public abstract void Update(CircuitComponent comp);

    /// <summary>
    /// Add all variants of this gate to a list of gates.
    /// If there are no variants it just adds itself.
    /// </summary>
    public virtual void AddVariants(List<CircuitGate> gates)
    {
        gates.Add(this);
    }

    protected void SetOutput(bool value)
    {
        _output = value ? True.Instance : False.Instance;
    }

    protected void SetOutput(int value)
    {
        SetOutput((float) value);
    }

    protected void SetOutput(float value)
    {
        _output = new Number(value);
    }

    protected void SetOutput(string value)
    {
        _output = value;
    }

    protected void SetOutputToObject(object value)
    {
        _output = value;
    }

    protected void CopyOutputFromObject(object value)
    {
        if (value is Number n)
            _output = new Number(n.Value); // only datatype that needs to be deep copied is the number wrapper
        else
            _output = value; // everything else has no data or can be passed as-is (string)
    }

    /// <summary>
    /// Called for a user's serialized gates.
    /// </summary>
    public void Validate()
    {
        Pos = ClampPosition(Pos);
        var count = InputCount;
        if (Inputs.Count > count)
            Inputs.RemoveRange(count, Inputs.Count - count);

        while (Inputs.Count < count)
            Inputs.Add(CircuitIndex.Invalid);
    }

    /// <summary>
    /// Add a linked circuit input index this gate is outputting to.
    /// </summary>
    public void LinkOutput(CircuitIndex linked)
    {
        if (!LinkedOutputs.Contains(linked))
            LinkedOutputs.Add(linked);
    }

    /// <summary>
    /// Clamp a gate position to the allowed range.
    /// </summary>
    public static Vector2 ClampPosition(Vector2 pos)
        => Vector2.Clamp(pos, -MaxOffset, MaxOffset);
}

#endregion

#region Misc

/// <summary>
/// A constant value source.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitConstantGate : CircuitGate
{
    public CircuitConstantGate(object value)
    {
        SetOutputToObject(value);
    }

    public override string Name => "CONST";
    public override string Category => string.Empty; // UI has a dedicated thing to add constants, hide it
    public override string Desc => $"Всегда выдаёт постоянное значение: {Output}"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.Any;
    public override int InputCount => 0;

    public override void Update(CircuitComponent comp) {}
}

/// <summary>
/// Stores any value when second input is true.
/// Output is always the stored value.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitMemoryCell : CircuitGate
{
    public override string Name => "MEM";
    public override string Category => "Разное"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.Any;
    public override string Desc => "Выдаёт сохранённое в памяти значение.\nЕсли на втором входе true, записывает значение с первого входа в память."; // SIS-TODO: Анхаркод локали
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        if (comp.GetBool(Inputs[1]))
            CopyOutputFromObject(comp.GetValue(Inputs[0]));
    }
}

/// <summary>
/// Choosen between second and third outputs based on the first as a bool.
/// The choices can be any type, including different ones.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitIfElse : CircuitGate
{
    public override string Name => "IF";
    public override string Category => "Разное"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.Any;
    public override string Desc => "Выдаёт значение со второго входа, если на первом true, или с третьего, если false."; // SIS-TODO: Анхаркод локали
    public override int InputCount => 3;

    public override void Update(CircuitComponent comp)
    {
        CopyOutputFromObject(comp.GetBool(Inputs[0])
            ? comp.GetValue(Inputs[1])
            : comp.GetValue(Inputs[2]));
    }
}

#endregion

#region Boolean Logic

/// <summary>
/// A binary logic gate for a circuit.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitLogicGate : CircuitGate
{
    /// <summary>
    /// The binary logic operation to do on the inputs.
    /// </summary>
    [DataField]
    public LogicGate Gate = LogicGate.Or;

    public override string Name => Gate.ToString().ToUpper();
    public override string Category => "Булева Логика"; // SIS-TODO: Анхаркод локали
    public override string Desc => Gate switch
    {
        LogicGate.Or => "Истина, если хотя бы на одном входе истина", // SIS-TODO: Анхаркод локали
        LogicGate.And => "Истина, если на обоих входах истина", // SIS-TODO: Анхаркод локали
        LogicGate.Xor => "Истина, если значения на входах различаются", // SIS-TODO: Анхаркод локали
        LogicGate.Nor => "Истина, если на обоих входах ложь", // SIS-TODO: Анхаркод локали
        LogicGate.Nand => "Истина, если истина не более чем на одном входе", // SIS-TODO: Анхаркод локали
        LogicGate.Xnor => "Истина, если значения на входах совпадают", // SIS-TODO: Анхаркод локали
        _ => string.Empty
    };
    public override GateValue OutputType => GateValue.Bool;
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        var a = comp.GetBool(Inputs[0]);
        var b = comp.GetBool(Inputs[1]);
        SetOutput(Gate switch
        {
            LogicGate.Or => a || b,
            LogicGate.And => a && b,
            LogicGate.Xor => a != b,
            LogicGate.Nor => !(a || b),
            LogicGate.Nand => !(a && b),
            LogicGate.Xnor => a == b,
            _ => false
        });
    }

    public override void AddVariants(List<CircuitGate> gates)
    {
        var values = (LogicGate[]) Enum.GetValues(typeof(LogicGate));
        foreach (var gate in values)
        {
            gates.Add(new CircuitLogicGate()
            {
                Gate = gate
            });
        }
    }
}

#endregion

#region Strings

/// <summary>
/// Unary gate that gets the length of a string.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitStrLenGate : CircuitGate
{
    public override string Name => "LEN";
    public override string Category => "Строки"; // SIS-TODO: Анхаркод локали
    public override string Desc => "Выдаёт длину входной строки целым числом"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.Int;
    public override int InputCount => 1;

    public override void Update(CircuitComponent comp)
    {
        var s = comp.GetString(Inputs[0]);
        SetOutput(s.Length);
    }
}

/// <summary>
/// Binary gate that gets the integer value of the nth char of a string.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitStrCharGate : CircuitGate
{
    public override string Name => "CHAR";
    public override string Category => "Строки"; // SIS-TODO: Анхаркод локали
    public override string Desc => "Первый вход — строка, второй — позиция. На выходе числовой код символа на этой позиции."; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.Int;
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        var s = comp.GetString(Inputs[0]);
        var i = comp.GetInt(Inputs[1]);
        SetOutput(i < s.Length ? (int) s[i] : 0);
    }
}

/// <summary>
/// Unary gate which compares the second input string against the first input string.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitStrCompareGate : CircuitGate
{
    [DataField]
    public NameFilterMode Mode = NameFilterMode.Contain;

    public override string Name => Mode.ToString().ToUpper();
    public override string Category => "Строки"; // SIS-TODO: Анхаркод локали
    public override string Desc => Mode switch
    {
        NameFilterMode.Contain => "Истина, если первая строка содержит вторую", // SIS-TODO: Анхаркод локали
        NameFilterMode.Start => "Истина, если первая строка начинается со второй", // SIS-TODO: Анхаркод локали
        NameFilterMode.End => "Истина, если первая строка заканчивается второй", // SIS-TODO: Анхаркод локали
        NameFilterMode.Match => "Истина, если строки на входах совпадают", // SIS-TODO: Анхаркод локали
        _ => string.Empty
    };
    public override GateValue OutputType => GateValue.Bool;
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        var s = comp.GetString(Inputs[0]);
        var check = comp.GetString(Inputs[1]);
        SetOutput(Mode switch
        {
            NameFilterMode.Contain => s.Contains(check),
            NameFilterMode.Start => s.StartsWith(check),
            NameFilterMode.End => s.EndsWith(check),
            NameFilterMode.Match => s == check,
            _ => false
        });
    }

    public override void AddVariants(List<CircuitGate> gates)
    {
        var modes = (NameFilterMode[]) Enum.GetValues(typeof(NameFilterMode));
        foreach (var mode in modes)
        {
            gates.Add(new CircuitStrCompareGate()
            {
                Mode = mode
            });
        }
    }
}

/// <summary>
/// Unary gate that makes a string lowercase.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitStrLowerGate : CircuitGate
{
    public override string Name => "LOWER";
    public override string Category => "Строки"; // SIS-TODO: Анхаркод локали
    public override string Desc => "Переводит строку в нижний регистр"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.String;
    public override int InputCount => 1;

    public override void Update(CircuitComponent comp)
    {
        var s = comp.GetString(Inputs[0]);
        SetOutput(s.ToLower());
    }
}

/// <summary>
/// Unary gate that makes a string uppercase.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitStrUpperGate : CircuitGate
{
    public override string Name => "UPPER";
    public override string Category => "Строки"; // SIS-TODO: Анхаркод локали
    public override string Desc => "Переводит строку в верхний регистр"; // SIS-TODO: Анхаркод локали
    public override GateValue OutputType => GateValue.String;
    public override int InputCount => 1;

    public override void Update(CircuitComponent comp)
    {
        var s = comp.GetString(Inputs[0]);
        SetOutput(s.ToUpper());
    }
}

#endregion

#region Maths

/// <summary>
/// Binary math gate, operating on 2 int or number inputs.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitMathGate : CircuitGate
{
    [DataField]
    public MathOp Op = MathOp.Add;

    public override string Name => Op.ToString().ToUpper();
    public override string Category => "Математика"; // SIS-TODO: Анхаркод локали
    public override string Desc => Op switch
    {
        // if you need this you need to go to school...
        MathOp.Add => "Сумма значений на входах", // SIS-TODO: Анхаркод локали
        MathOp.Sub => "Из значения первого входа вычитается значение второго", // SIS-TODO: Анхаркод локали
        MathOp.Mul => "Произведение значений на входах", // SIS-TODO: Анхаркод локали
        MathOp.Div => "Значение первого входа делится на значение второго", // SIS-TODO: Анхаркод локали
        MathOp.Rem => "Остаток от деления значения первого входа на значение второго", // SIS-TODO: Анхаркод локали
        MathOp.Pow => "Значение первого входа возводится в степень, заданную на втором входе", // SIS-TODO: Анхаркод локали
        MathOp.Bor => "Побитовое ИЛИ значений на входах", // SIS-TODO: Анхаркод локали
        MathOp.Band => "Побитовое И значений на входах", // SIS-TODO: Анхаркод локали
        MathOp.Bxor => "Побитовое исключающее ИЛИ значений на входах", // SIS-TODO: Анхаркод локали
        MathOp.Bls => "Сдвигает биты значения первого входа влево на число позиций, заданное на втором", // SIS-TODO: Анхаркод локали
        MathOp.Brs => "Сдвигает биты значения первого входа вправо на число позиций, заданное на втором", // SIS-TODO: Анхаркод локали
        _ => string.Empty
    };
    public override GateValue OutputType => GateValue.Number;
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        var a = comp.GetFloat(Inputs[0]);
        var b = comp.GetFloat(Inputs[1]);
        var ai = (int) Math.Round(a);
        var bi = (int) Math.Round(b);
        SetOutput(Op switch
        {
            // arithmetic
            MathOp.Add => a + b,
            MathOp.Sub => a - b,
            MathOp.Mul => a * b,
            MathOp.Div => b != 0f ? a / b : 0f,
            MathOp.Rem => b != 0f ? a % b : 0f,
            MathOp.Pow => (a != 0f || b >= 0f) ? MathF.Pow(a, b) : 0f,
            // bitwise
            MathOp.Bor => (float) (ai | bi),
            MathOp.Band => (float) (ai & bi),
            MathOp.Bxor => (float) (ai ^ bi),
            MathOp.Bls => (float) (ai << bi),
            MathOp.Brs => (float) (ai >> bi),
            _ => 0f
        });
    }

    public override void AddVariants(List<CircuitGate> gates)
    {
        var ops = (MathOp[]) Enum.GetValues(typeof(MathOp));
        foreach (var op in ops)
        {
            gates.Add(new CircuitMathGate()
            {
                Op = op
            });
        }
    }
}

[Serializable, NetSerializable]
public enum MathOp : byte
{
    Add,
    Sub,
    Mul,
    Div,
    Rem,
    Pow,
    Bor,
    Band,
    Bxor,
    Bls,
    Brs
}

/// <summary>
/// Binary comparison gate, operating on 2 number inputs.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitCompareGate : CircuitGate
{
    [DataField]
    public CompareOp Op = CompareOp.Equal;

    public override string Name => Op switch
    {
        CompareOp.Equal => "==",
        CompareOp.NotEqual => "!=",
        CompareOp.Greater => ">",
        CompareOp.GreaterEqual => ">=",
        CompareOp.Less => "<",
        CompareOp.LessEqual => "<=",
        _ => "?"
    };
    public override string Category => "Логика"; // SIS-TODO: Анхаркод локали
    public override string Desc => Op switch
    {
        CompareOp.Equal => "Истина, если числа на входах равны", // SIS-TODO: Анхаркод локали
        CompareOp.NotEqual => "Истина, если числа на входах различаются", // SIS-TODO: Анхаркод локали
        CompareOp.Greater => "Истина, если число на первом входе больше числа на втором", // SIS-TODO: Анхаркод локали
        CompareOp.GreaterEqual => "Истина, если число на первом входе больше либо равно числу на втором", // SIS-TODO: Анхаркод локали
        CompareOp.Less => "Истина, если число на первом входе меньше числа на втором", // SIS-TODO: Анхаркод локали
        CompareOp.LessEqual => "Истина, если число на первом входе меньше либо равно числу на втором", // SIS-TODO: Анхаркод локали
        _ => string.Empty
    };
    public override GateValue OutputType => GateValue.Bool;
    public override int InputCount => 2;

    public override void Update(CircuitComponent comp)
    {
        var a = comp.GetFloat(Inputs[0]);
        var b = comp.GetFloat(Inputs[1]);
        SetOutput(Op switch
        {
            CompareOp.Equal => a == b,
            CompareOp.NotEqual => a != b,
            CompareOp.Greater => a > b,
            CompareOp.GreaterEqual => a >= b,
            CompareOp.Less => a < b,
            CompareOp.LessEqual => a <= b,
            _ => false
        });
    }

    public override void AddVariants(List<CircuitGate> gates)
    {
        var ops = (CompareOp[]) Enum.GetValues(typeof(CompareOp));
        foreach (var op in ops)
        {
            gates.Add(new CircuitCompareGate()
            {
                Op = op
            });
        }
    }
}

[Serializable, NetSerializable]
public enum CompareOp : byte
{
    Equal,
    NotEqual,
    Greater,
    GreaterEqual,
    Less,
    LessEqual
}

/// <summary>
/// Unary trigonometry gate, operating on 1 float input.
/// </summary>
[Serializable, NetSerializable]
public sealed partial class CircuitTrigGate : CircuitGate
{
    [DataField]
    public TrigOp Op = TrigOp.Sin;

    public override string Name => Op switch
    {
        TrigOp.Sin => "SIN",
        TrigOp.Cos => "COS",
        TrigOp.Tan => "TAN",
        TrigOp.ASin => "ASIN",
        TrigOp.ACos => "ACOS",
        TrigOp.ATan => "ATAN",
        _ => "?"
    };
    public override string Category => "Тригонометрия"; // SIS-TODO: Анхаркод локали
    public override string Desc => Op switch
    {
        TrigOp.Sin => "sin(угол) = противолежащий катет / гипотенуза", // SIS-TODO: Анхаркод локали
        TrigOp.Cos => "cos(угол) = прилежащий катет / гипотенуза", // SIS-TODO: Анхаркод локали
        TrigOp.Tan => "tan(угол) = противолежащий катет / прилежащий катет", // SIS-TODO: Анхаркод локали
        TrigOp.ASin => "asin(противолежащий катет / гипотенуза) = угол", // SIS-TODO: Анхаркод локали
        TrigOp.ACos => "acos(прилежащий катет / гипотенуза) = угол", // SIS-TODO: Анхаркод локали
        TrigOp.ATan => "atan(противолежащий катет / прилежащий катет) = угол", // atan2 can be done with a divide gate before it // SIS-TODO: Анхаркод локали
        _ => string.Empty
    };
    public override GateValue OutputType => GateValue.Number;
    public override int InputCount => 1;

    public override void Update(CircuitComponent comp)
    {
        var n = comp.GetFloat(Inputs[0]);
        SetOutput(Op switch
        {
            TrigOp.Sin => MathF.Sin(n),
            TrigOp.Cos => MathF.Cos(n),
            TrigOp.Tan => MathF.Tan(n),
            TrigOp.ASin => Single.Asin(n),
            TrigOp.ACos => Single.Acos(n),
            TrigOp.ATan => Single.Atan(n),
            _ => 0f
        });
    }

    public override void AddVariants(List<CircuitGate> gates)
    {
        var ops = (TrigOp[]) Enum.GetValues(typeof(TrigOp));
        foreach (var op in ops)
        {
            gates.Add(new CircuitTrigGate()
            {
                Op = op
            });
        }
    }
}

[Serializable, NetSerializable]
public enum TrigOp : byte
{
    Sin,
    Cos,
    Tan,
    ASin,
    ACos,
    ATan
}

#endregion
