ent-BaseNuclearReactor = ядерный реактор
    .desc = Корпус ядерного реактора с гнёздами для топливных стержней и других компонентов. Погодите, разве такой однажды не взорвался?

ent-NuclearReactorCrew = { ent-BaseNuclearReactor }
    .desc = { ent-BaseNuclearReactor.desc }

ent-NuclearReactorCrewRunning = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Работает

ent-NuclearReactorEmpty = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Пусто

ent-NuclearReactorRandom = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Случайное Наполнение

ent-NuclearReactorMeltdown = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Расплавляется

ent-NuclearReactorMelted = ядерный реактор
    .desc = Разрушенный корпус ядерного реактора. Светится от жара и радиации.
    .suffix = Расплавлен

ent-NuclearReactorSmall = малый ядерный реактор
    .desc = { ent-NuclearReactorCrew.desc }

ent-NuclearReactorSmallRandom = { ent-NuclearReactorSmall }
    .desc = { ent-NuclearReactorSmall.desc }
    .suffix = Случайное Наполнение

ent-NuclearReactorSmallMelted = малый ядерный реактор
    .desc = Разрушенный корпус ядерного реактора. Светится от жара и радиации.
    .suffix = Расплавлен

ent-NuclearReactorSalvage = { ent-BaseNuclearReactor }
    .desc = { ent-BaseNuclearReactor.desc }

ent-NuclearReactorNormalSalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Утилизация

ent-NuclearReactorEmptySalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Пусто, Утилизация

ent-NuclearReactorRandomSalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Случайное Наполнение, Утилизация

ent-NuclearReactorMeltedSalvage = { ent-NuclearReactorMelted }
    .desc = Давно расплавившийся корпус ядерного реактора. Всё ещё светится от остаточного тепла и радиации.
    .suffix = Расплавлен, Утилизация

ent-NuclearReactorSmallSalvage = малый ядерный реактор
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Утилизация

ent-NuclearReactorSmallRandomSalvage = { ent-NuclearReactorSmall }
    .desc = { ent-NuclearReactorSmall.desc }
    .suffix = Случайное Наполнение, Утилизация

ent-NuclearReactorSmallMeltedSalvage = { ent-NuclearReactorSmallMelted }
    .desc = Давно расплавившийся корпус ядерного реактора. Всё ещё светится от остаточного тепла и радиации.
    .suffix = Расплавлен, Утилизация

ent-NuclearDebrisChunk = обломки реактора
    .desc = Вы не видите графита на полу. У вас шок. Обратитесь в медотсек.

ent-ReactorFlowArrow = { "" }
    .desc = { "" }

ent-ReactorSmallFlowArrow = { ent-ReactorFlowArrow }
    .desc = { ent-ReactorFlowArrow.desc }

ent-NuclearMachineGasPipe = { "" }
    .desc = { "" }

ent-ReactorAlarmEntity = { "" }
    .desc = { "" }