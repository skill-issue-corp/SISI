ent-BaseNuclearReactor = nuclear reactor
    .desc = A nuclear reactor vessel, with slots for fuel rods and other components. Hey wait, didn't one of these explode once?

ent-NuclearReactorCrew = { ent-BaseNuclearReactor }
    .desc = { ent-BaseNuclearReactor.desc }

ent-NuclearReactorEmpty = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Empty

ent-NuclearReactorRandom = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Random

ent-NuclearReactorMeltdown = { ent-NuclearReactorCrew }
    .desc = { ent-NuclearReactorCrew.desc }
    .suffix = Meltdown

ent-NuclearReactorMelted = nuclear reactor
    .desc = A broken nuclear reactor vessel. It glows with heat and radiation.
    .suffix = Melted

ent-NuclearReactorSmall = small nuclear reactor
    .desc = { ent-NuclearReactorCrew.desc }

ent-NuclearReactorSmallRandom = { ent-NuclearReactorSmall }
    .desc = { ent-NuclearReactorSmall.desc }
    .suffix = Random

ent-NuclearReactorSmallMelted = small nuclear reactor
    .desc = A broken nuclear reactor vessel. It glows with heat and radiation.
    .suffix = Melted

ent-NuclearReactorSalvage = { ent-BaseNuclearReactor }
    .desc = { ent-BaseNuclearReactor.desc }

ent-NuclearReactorNormalSalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Salvage

ent-NuclearReactorEmptySalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Empty, Salvage

ent-NuclearReactorRandomSalvage = { ent-NuclearReactorSalvage }
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Random, Salvage

ent-NuclearReactorMeltedSalvage = { ent-NuclearReactorMelted }
    .desc = A nuclear reactor vessel, long since melted down. It still glows with residual heat and radiation.
    .suffix = Melted, Salvage

ent-NuclearReactorSmallSalvage = small nuclear reactor
    .desc = { ent-NuclearReactorSalvage.desc }
    .suffix = Salvage

ent-NuclearReactorSmallRandomSalvage = { ent-NuclearReactorSmall }
    .desc = { ent-NuclearReactorSmall.desc }
    .suffix = Random, Salvage

ent-NuclearReactorSmallMeltedSalvage = { ent-NuclearReactorSmallMelted }
    .desc = A nuclear reactor vessel, long since melted down. It still glows with residual heat and radiation.
    .suffix = Melted, Salvage

ent-NuclearDebrisChunk = nuclear debris
    .desc = You do not see the graphite on the floor. You're in shock. Report to medical.

ent-ReactorFlowArrow = { "" }
    .desc = { "" }

ent-ReactorSmallFlowArrow = { ent-ReactorFlowArrow }
    .desc = { ent-ReactorFlowArrow.desc }

ent-NuclearMachineGasPipe = { "" }
    .desc = { "" }

ent-ReactorAlarmEntity = { "" }
    .desc = { "" }