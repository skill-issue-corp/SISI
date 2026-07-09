ent-BaseDefibrillator = defibrillator
    .desc = CLEAR! Zzzzat!

ent-Defibrillator = { ent-BaseManualDefibrillator }
    .desc = { ent-BaseManualDefibrillator.desc }

ent-DefibrillatorEmpty = { ent-Defibrillator }
    .desc = { ent-Defibrillator.desc }
    .suffix = Empty

ent-DefibrillatorOneHandedUnpowered = { ent-BaseDefibrillator }
    .desc = { ent-BaseDefibrillator.desc }
    .suffix = One-Handed, Always Powered

ent-DefibrillatorCompact = auto defibrillator
    .desc = An automatic defibrillator, capable of auto-stabilisating the patient on use. Now in fun size!

ent-DefibrillatorSyndicate = interdyne defibrillator
    .desc = Doubles as a self-defense weapon against war-crime inclined tiders. Has lower charge-up rate and auto-stabilises to the BPM of the patient.