ent-BaseIntercom = интерком
    .desc = Интерком. На случай, если станции просто необходимо о чём-то узнать.

ent-IntercomAssembly = каркас интеркома
    .desc = Интерком. Сейчас от него, похоже, мало толку.

ent-IntercomConstructed = { ent-BaseIntercom }
    .desc = { ent-BaseIntercom.desc }
    .suffix = Пусто, Панель Открыта

ent-Intercom = { ent-IntercomConstructed }
    .desc = { ent-IntercomConstructed.desc }

ent-BaseIntercomSecure = { ent-Intercom }
    .desc = { ent-Intercom.desc }

ent-IntercomCommon = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Общий

ent-IntercomCommand = { ent-BaseIntercomSecure }
    .desc = Интерком. Его укрепили металлом.
    .suffix = Командование

ent-IntercomEngineering = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Инженерный Отдел

ent-IntercomMedical = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Медотсек

ent-IntercomScience = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Наука

ent-IntercomSecurity = { ent-BaseIntercomSecure }
    .desc = Интерком. Его укрепили металлом из шлемов службы безопасности, так что хрен его откроешь.
    .suffix = Служба Безопасности

ent-IntercomService = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Обслуживание

ent-IntercomSupply = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Снабжение

ent-IntercomAll = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Все

ent-IntercomFreelance = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Вольные