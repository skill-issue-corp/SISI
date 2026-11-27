ent-StationAnchorBase = якорь станции
    .desc = Удерживает станцию на месте.
    .suffix = Включён

ent-StationAnchorIndestructible = { ent-StationAnchorBase }
    .desc = { ent-StationAnchorBase.desc }
    .suffix = Неразрушимый, Обесточен

ent-StationAnchor = { ent-StationAnchorBase }
    .desc = { ent-StationAnchorBase.desc }

ent-StationAnchorOff = { ent-StationAnchor }
    .desc = { ent-StationAnchor.desc }
    .suffix = Выключен