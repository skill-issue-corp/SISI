ent-BaseDelivery = { ent-BaseItem }
    .desc = { ent-BaseItem.desc }

ent-PackageDelivery = посылка
    .desc = { ent-BaseDelivery.desc }

ent-LetterDelivery = письмо
    .desc = { ent-BaseDelivery.desc }

ent-DeliveryModifierPriority = { "" }
    .desc = Компоненты, которые добавляются, если доставка выпала срочной.

ent-DeliveryModifierFragile = { "" }
    .desc = Компоненты, которые добавляются, если доставка выпала хрупкой.

ent-DeliveryModifierBomb = { "" }
    .desc = Компоненты, которые добавляются, если при доставке выпала бомба.