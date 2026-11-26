ent-BaseBloomery = unlit bloomery
    .desc = { ent-BaseStructure.desc }

ent-BaseBloomeryLit = lit bloomery
    .desc = { ent-BaseBloomery.desc }

ent-BaseBloomeryComplete = smoking bloomery
    .desc = Looks ready, smash it open.

ent-BloomeryCold = unlit bloomery
    .desc = Needs to be loaded with charcoal and metal scraps before firing.

ent-BloomeryColdBrass = { ent-BaseBloomery }
    .desc = Loaded with brass, just needs firing.
    .suffix = Brass

ent-BloomeryColdPlasteel = { ent-BaseBloomery }
    .desc = Loaded with plasteel, just needs firing.
    .suffix = Plasteel

ent-BloomeryColdSteel = { ent-BaseBloomery }
    .desc = Loaded with steel, just needs firing.
    .suffix = Steel

ent-BloomeryLitBrass = { ent-BaseBloomeryLit }
    .desc = Loaded with brass, give it some time to burn and it will be ready.
    .suffix = Brass

ent-BloomeryLitSteel = { ent-BaseBloomeryLit }
    .desc = Loaded with steel, give it some time to burn and it will be ready.
    .suffix = Steel

ent-BloomeryLitPlasteel = lit bloomery
    .desc = Loaded with plasteel, give it some time to burn and it will be ready.

ent-BloomeryCompletePlasteel = { ent-BaseBloomeryComplete }
    .desc = { ent-BaseBloomeryComplete.desc }
    .suffix = Plasteel

ent-BloomeryCompleteSteel = { ent-BaseBloomeryComplete }
    .desc = { ent-BaseBloomeryComplete.desc }
    .suffix = Steel

ent-BloomeryCompleteBrass = { ent-BaseBloomeryComplete }
    .desc = { ent-BaseBloomeryComplete.desc }
    .suffix = Brass