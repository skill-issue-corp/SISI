ent-BaseIntercom = intercom
    .desc = An intercom. For when the station just needs to know something.

ent-IntercomAssembly = intercom assembly
    .desc = An intercom. It doesn't seem very helpful right now.

ent-IntercomConstructed = { ent-BaseIntercom }
    .desc = { ent-BaseIntercom.desc }
    .suffix = Empty, Panel Open

ent-Intercom = { ent-IntercomConstructed }
    .desc = { ent-IntercomConstructed.desc }

ent-BaseIntercomSecure = { ent-Intercom }
    .desc = { ent-Intercom.desc }

ent-IntercomCommon = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Common

ent-IntercomCommand = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal.
    .suffix = Command

ent-IntercomEngineering = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Engineering

ent-IntercomMedical = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Medical

ent-IntercomScience = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Science

ent-IntercomSecurity = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal from security helmets, making it a bitch-and-a-half to open.
    .suffix = Security

ent-IntercomService = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Service

ent-IntercomSupply = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Supply

ent-IntercomAll = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = All

ent-IntercomFreelance = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Freelance