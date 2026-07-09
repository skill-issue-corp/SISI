ent-RandomHumanoidSpawnerDeathSquad = Death Squad Operative
    .desc = { "" }
    .suffix = ERTRole, Death Squad

ent-RandomHumanoidSpawnerERTLeader = ERT leader
    .desc = { "" }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTLeaderEVA = ERT leader
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTLeaderArmed = { ent-RandomHumanoidSpawnerERTLeaderEVA }
    .desc = { ent-RandomHumanoidSpawnerERTLeaderEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTChaplain = ERT chaplain
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTChaplainEVA = ERT chaplain
    .desc = { ent-RandomHumanoidSpawnerERTChaplain.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTJanitor = ERT janitor
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTJanitorEVA = { ent-RandomHumanoidSpawnerERTJanitor }
    .desc = { ent-RandomHumanoidSpawnerERTJanitor.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTEngineer = ERT engineer
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTEngineerEVA = { ent-RandomHumanoidSpawnerERTEngineer }
    .desc = { ent-RandomHumanoidSpawnerERTEngineer.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTEngineerArmed = { ent-RandomHumanoidSpawnerERTEngineerEVA }
    .desc = { ent-RandomHumanoidSpawnerERTEngineerEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTSecurity = ERT security
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTSecurityEVA = ERT security
    .desc = { ent-RandomHumanoidSpawnerERTSecurity.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTSecurityArmedRifle = ERT security rifleman
    .desc = { ent-RandomHumanoidSpawnerERTSecurityEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTSecurityArmedGrenade = ERT security grenadier
    .desc = { ent-RandomHumanoidSpawnerERTSecurityEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTSecurityArmedVanguard = ERT security vanguard
    .desc = { ent-RandomHumanoidSpawnerERTSecurityEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTSecurityArmedShotgun = ERT security breacher
    .desc = { ent-RandomHumanoidSpawnerERTSecurityEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerERTMedical = ERT medic
    .desc = { ent-RandomHumanoidSpawnerERTLeader.desc }
    .suffix = ERTRole, Basic

ent-RandomHumanoidSpawnerERTMedicalEVA = { ent-RandomHumanoidSpawnerERTMedical }
    .desc = { ent-RandomHumanoidSpawnerERTMedical.desc }
    .suffix = ERTRole, EVA

ent-RandomHumanoidSpawnerERTMedicalArmed = { ent-RandomHumanoidSpawnerERTMedicalEVA }
    .desc = { ent-RandomHumanoidSpawnerERTMedicalEVA.desc }
    .suffix = ERTRole, Armed, EVA

ent-RandomHumanoidSpawnerCBURNUnit = CBURN Agent
    .desc = { "" }
    .suffix = ERTRole

ent-RandomHumanoidSpawnerCentcomOfficial = CentComm official
    .desc = { "" }

ent-RandomHumanoidSpawnerSyndicateAgent = syndicate agent
    .desc = { "" }

ent-RandomHumanoidSpawnerNukeOp = Nuclear Operative
    .desc = { "" }

ent-RandomHumanoidSpawnerCluwne = Cluwne
    .desc = { "" }
    .suffix = spawns a cluwne