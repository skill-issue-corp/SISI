eldritch-id-card-component-examine-inverted = Текущий эффект: [color=yellow]инвертирован[/color]

eldritch-id-card-component-examine-message =
    Зачарована Мансусом!
    Приложите к ней ID-карту или приложите её к другой ID-карте, чтобы поглотить ту карту и скопировать её доступы.
    Активируйте её в руке, чтобы изменить внешний вид.
    Приложите её к двум дверям, чтобы связать их. Вход в одну перенесёт вас к другой, а язычников отправит к случайному шлюзу.
    Нажмите на карту с Alt, чтобы она создавала инвертированные порталы. Они отправят вас к случайному шлюзу на станции, а язычников перенесут к связанному шлюзу.

eldritch-id-card-component-on-invert =
    { $inverted ->
      [true] теперь
      *[false] больше не
    } создаются инвертированные разломы

eldritch-id-card-component-portal-inverted =
    портал { $inverted ->
             [true] инвертирован
             *[false] больше не инвертирован
           }

eldritch-id-card-component-invert = Инвертировать
eldritch-id-card-component-invert-message = Переключить режим порталов ID-карты. В инвертированном режиме портал отправит вас к случайному шлюзу станции, а язычников — к связанному шлюзу. В обычном режиме всё наоборот.

eldritch-id-card-component-link-one = связь 1/2
eldritch-id-card-component-link-two = связь 2/2

lock-portal-component-clear-portals = Удалить обе связи

lock-portal-component-examine-inverted = [color=yellow]инвертирован[/color]
lock-portal-component-examine-not-inverted = [color=yellow]не инвертирован[/color]

lock-portal-component-examine-message =
    Состояние портала: {$status}.
    Нажмите на него потусторонней id-картой, чтобы инвертировать.
    Нажмите с Alt, держа потустороннюю id-карту, чтобы удалить обе связи.
