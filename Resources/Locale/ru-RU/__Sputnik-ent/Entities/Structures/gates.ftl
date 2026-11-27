ent-LogicEmptyCircuit = пустая схема
    .desc = Похоже, чего-то не хватает.

ent-BaseLogicItem = { ent-LogicEmptyCircuit }
    .desc = { ent-LogicEmptyCircuit.desc }

ent-LogicGateOr = логический элемент
    .desc = Логический элемент с двумя входами и одним выходом. Техник может сменить режим работы отвёрткой.
    .suffix = Или

ent-LogicGateAnd = { ent-LogicGateOr }
    .desc = { ent-LogicGateOr.desc }
    .suffix = И

ent-LogicGateXor = { ent-LogicGateOr }
    .desc = { ent-LogicGateOr.desc }
    .suffix = ИсклИли

ent-LogicGateNor = { ent-LogicGateOr }
    .desc = { ent-LogicGateOr.desc }
    .suffix = НеИли

ent-LogicGateNand = { ent-LogicGateOr }
    .desc = { ent-LogicGateOr.desc }
    .suffix = НеИ

ent-LogicGateXnor = { ent-LogicGateOr }
    .desc = { ent-LogicGateOr.desc }
    .suffix = НеИсклИли

ent-EdgeDetector = детектор фронтов
    .desc = Преобразует передний и задний фронты в разные импульсы и определяет, насколько вы остры на язык.

ent-PowerSensor = датчик питания
    .desc = Генерирует сигналы при изменениях электросети. Можно переключать между напряжениями кабелей.

ent-MemoryCell = ячейка памяти
    .desc = Схема D-защёлки, которая хранит сигнал и изменяет его в зависимости от входа данных и входа разрешения.

ent-RandomGate = случайный элемент
    .desc = Логический элемент, выдающий случайный сигнал при изменении входа.