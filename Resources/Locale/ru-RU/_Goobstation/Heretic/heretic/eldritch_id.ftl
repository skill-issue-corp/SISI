eldritch-id-card-component-examine-inverted = Текущий эффект [color=yellow]инвертирован[/color]

eldritch-id-card-component-examine-message =
    Зачаровано Мансусом!
    Использование ID-карты на этом предмете или использование этого предмета на другой ID-карте израсходует его и позволит вам скопировать доступы.
    Использование этого предмета в руке позволяет изменить его внешний вид.
    Использование этого предмета на паре дверей позволяет связать их между собой. Вход в одну дверь телепортирует вас к другой, тогда как иноверцы вместо этого телепортируются к случайному шлюзу.
    Альт-клик по ID-карте заставляет её создавать инвертированные порталы, которые телепортируют вас к случайному шлюзу на станции, тогда как иноверцы телепортируются к месту назначения.

eldritch-id-card-component-on-invert =
    { $inverted ->
      [true] теперь создаёт
      *[false] больше не создаёт
    } инвертированные разрывы

eldritch-id-card-component-portal-inverted =
    портал { $inverted ->
             [true] инвертирован
             *[false] больше не инвертирован
           }

eldritch-id-card-component-invert = Инвертировать
eldritch-id-card-component-invert-message = Заставляет ID-карту создавать инвертированные порталы, которые телепортируют вас к случайному шлюзу на станции, тогда как иноверцы телепортируются к месту назначения, или наоборот.

eldritch-id-card-component-link-one = связь 1/2
eldritch-id-card-component-link-two = связь 2/2

lock-portal-component-clear-portals = Очистить обе связи

lock-portal-component-examine-inverted = [color=yellow]инвертирован[/color]
lock-portal-component-examine-not-inverted = [color=yellow]не инвертирован[/color]

lock-portal-component-examine-message =
    Портал {$status}.
    Кликните по нему с еретическим ID, чтобы инвертировать его.
    Альт-клик с еретическим ID, чтобы удалить обе связи.
