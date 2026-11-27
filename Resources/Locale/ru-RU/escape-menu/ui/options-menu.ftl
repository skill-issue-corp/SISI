## General stuff

ui-options-title = Настройки Игры
ui-options-tab-accessibility = Доступность
ui-options-tab-admin = Администрирование
ui-options-tab-graphics = Графика
ui-options-tab-controls = Управление
ui-options-tab-audio = Звук
ui-options-tab-network = Сеть
ui-options-tab-misc = Общие

ui-options-apply = Сохранить и применить
ui-options-reset-all = Отменить изменения
ui-options-default = Восстановить настройки по умолчанию

ui-options-value-percent = { TOSTRING($value, "P0") }

# Misc/General menu

ui-options-discordrich = Включить Discord Rich Presence
ui-options-general-ui-style = Стиль Интерфейса
ui-options-general-discord = Discord
ui-options-general-cursor = Курсор
ui-options-general-speech = Речь
ui-options-general-storage = Хранилище
ui-options-general-accessibility = Доступность

## Audio menu

ui-options-master-volume = Общая Громкость:
ui-options-midi-volume = Громкость MIDI (Инструменты):
ui-options-ambient-music-volume = Громкость фоновой музыки:
ui-options-ambience-volume = Громкость окружения:
ui-options-lobby-volume = Громкость лобби и конца Раунда:
ui-options-interface-volume = Громкость интерфейса:
ui-options-ambience-max-sounds = Одновременные звуки окружения:
ui-options-lobby-music = Музыка Лобби и Конца Раунда
ui-options-restart-sounds = Звуки Перезапуска Раунда
ui-options-event-music = Музыка Событий
ui-options-admin-sounds = Воспроизводить Звуки Администрации
ui-options-bwoink-sound = Воспроизводить Звук Уведомлений ahelp
ui-options-mute-unfocused = Отключать звук в неактивном окне
ui-options-audio-device = Устройство вывода:
ui-options-audio-device-default = По умолчанию в системе
ui-options-audio-hrtf = Включить Обработку Звука HRTF (Требуется Перезапуск)
ui-options-volume-label = Громкость

## Graphics menu

ui-options-display-label = Экран
ui-options-quality-label = Качество
ui-options-misc-label = Прочее
ui-options-interface-label = Интерфейс


ui-options-auto-fill-highlights = Автоматически заполнять список подсветки по имени и должности персонажа
ui-options-highlights-color = Цвет подсветки:
ui-options-highlights-color-example = Пример подсвеченного текста.
ui-options-show-held-item = Показывать предмет в руке рядом с курсором
ui-options-show-combat-mode-indicators = Показывать индикаторы боевого режима рядом с курсором
ui-options-opaque-storage-window = Непрозрачное окно хранилища
ui-options-show-ooc-patron-color = Показывать цвет Patreon в OOC
ui-options-show-looc-on-head = Показывать чат LOOC над головой персонажа
ui-options-fancy-speech = Показывать имена в облачках речи
ui-options-fancy-name-background = Добавить фон под имена в облачках речи
ui-options-chat-follow-button = Показывать призракам кнопку слежения рядом с сообщениями
ui-options-vsync = VSync
ui-options-max-fps = Максимум FPS:
ui-options-max-fps-display-rate = Частота Обновления Экрана
ui-options-max-fps-tooltip = Максимальная частота кадров клиента. Значение 0 снимает ограничение. При включённом VSync эта настройка не действует.
ui-options-fullscreen = Полноэкранный режим
ui-options-lighting-label = Качество Освещения:
ui-options-lighting-very-low = Очень Низкое
ui-options-lighting-low = Низкое
ui-options-lighting-medium = Среднее
ui-options-lighting-high = Высокое
ui-options-scale-label = Масштаб Интерфейса:
ui-options-scale-auto = Автоматически ({ TOSTRING($scale, "P0") })
ui-options-scale-75 = 75%
ui-options-scale-100 = 100%
ui-options-scale-125 = 125%
ui-options-scale-150 = 150%
ui-options-scale-175 = 175%
ui-options-scale-200 = 200%
ui-options-hud-theme = Тема интерфейса:
ui-options-hud-theme-default = Стандартная
ui-options-hud-theme-plasmafire = Пламя Плазмы
ui-options-hud-theme-slimecore = Слаймкор
ui-options-hud-theme-clockwork = Часовой Механизм
ui-options-hud-theme-retro = Ретро
ui-options-hud-theme-minimalist = Минимализм
ui-options-hud-theme-ashen = Пепел
ui-options-hud-layout-default = Стандартная
ui-options-hud-layout-separated = Раздельная
ui-options-vp-stretch = Растягивать игровую область по размеру окна
ui-options-vp-scale = Фиксированный масштаб игровой области:
ui-options-vp-scale-value = x{ $scale }
ui-options-vp-integer-scaling = Предпочитать целочисленное масштабирование (возможны чёрные полосы или обрезка)
ui-options-vp-integer-scaling-tooltip = При включении этой настройки игровая область масштабируется с целочисленным коэффициентом
                                        при определённых разрешениях. Текстуры выглядят чётче, но часто
                                        сверху/снизу экрана появляются чёрные полосы либо часть
                                        игровой области обрезается.
ui-options-filter-label = Фильтр масштабирования:
ui-options-filter-nearest = По ближайшему соседу (без сглаживания)
ui-options-filter-bilinear = Билинейный (со сглаживанием)
ui-options-vp-vertical-fit = Подгонять игровую область по высоте
ui-options-vp-vertical-fit-tooltip = При включении игровая область подгоняется под экран только по вертикали.
                                     Если экран уже игровой области,
                                     её края будут обрезаны.
ui-options-vp-low-res = Игровая область низкого разрешения
ui-options-parallax-low-quality = Параллакс низкого качества (фон)
ui-options-ambient-occlusion = Показывать Контактные Тени
ui-options-fps-counter = Показывать счётчик FPS
ui-options-vp-width = Ширина игровой области:
ui-options-hud-layout = Компоновка интерфейса:
ui-options-sharpness = Резкость:

## Controls menu

ui-options-hold-to-attack-melee = Атаковать при удержании (ближний бой)
ui-options-hold-to-attack-ranged = Атаковать при удержании (дальний бой)

ui-options-binds-reset-all = Сбросить ВСЕ назначения клавиш
ui-options-binds-explanation = Нажмите, чтобы изменить назначение. Правая кнопка мыши сбрасывает назначение
ui-options-unbound = Не назначено
ui-options-bind-reset = Сбросить
ui-options-key-prompt = Нажмите клавишу...

ui-options-header-movement = Движение
ui-options-header-camera = Камера
ui-options-header-interaction-basic = Основные Действия
ui-options-header-interaction-adv = Дополнительные Действия
ui-options-header-ui = Интерфейс Пользователя
ui-options-header-misc = Прочее
ui-options-header-hotbar = Панель действий
ui-options-header-shuttle = Шаттл
ui-options-header-map-editor = Редактор Карт
ui-options-header-dev = Разработка
ui-options-header-general = Общие

ui-options-hotkey-keymap = Использовать Раскладку US QWERTY
ui-options-hotkey-toggle-walk = Переключить Ходьбу

ui-options-function-move-up = Двигаться Вверх
ui-options-function-move-left = Двигаться Влево
ui-options-function-move-down = Двигаться Вниз
ui-options-function-move-right = Двигаться Вправо
ui-options-function-walk = Идти шагом
ui-options-function-toggle-knockdown = Переключить Ползание

ui-options-function-camera-rotate-left = Повернуть влево
ui-options-function-camera-rotate-right = Повернуть вправо
ui-options-function-camera-reset = Сбросить
ui-options-function-zoom-in = Приблизить
ui-options-function-zoom-out = Отдалить
ui-options-function-reset-zoom = Сбросить приближение

ui-options-function-use = Использовать
ui-options-function-use-secondary = Использовать дополнительное действие
ui-options-function-alt-use = Альтернативное действие
ui-options-function-wide-attack = Размашистая атака
ui-options-function-activate-item-in-hand = Активировать предмет в руке
ui-options-function-alt-activate-item-in-hand = Альтернативно активировать предмет в руке
ui-options-function-activate-item-in-world = Активировать предмет в мире
ui-options-function-alt-activate-item-in-world = Альтернативно активировать предмет в мире
ui-options-function-drop = Уронить предмет
ui-options-function-examine-entity = Осмотреть
ui-options-function-swap-hands = Сменить руку
ui-options-function-swap-hands-reverse = Сменить руку (в другую сторону)
ui-options-function-move-stored-item = Переместить предмет в хранилище
ui-options-function-rotate-stored-item = Повернуть предмет в хранилище
ui-options-function-save-item-location = Запомнить место предмета
ui-options-static-storage-ui = Прикрепить окно хранилища к панели действий

ui-options-function-smart-equip-backpack = Быстро убрать в рюкзак
ui-options-function-smart-equip-belt = Быстро убрать на пояс
ui-options-function-smart-equip-suit-storage = Быстро убрать в отсек костюма
ui-options-function-smart-equip-pocket1 = Быстро убрать в карман 1
ui-options-function-smart-equip-pocket2 = Быстро убрать в карман 2
ui-options-function-open-backpack = Открыть рюкзак
ui-options-function-open-belt = Открыть пояс
ui-options-function-throw-item-in-hand = Бросить предмет
ui-options-function-try-pull-object = Потянуть предмет
ui-options-function-move-pulled-object = Передвинуть перетаскиваемый предмет
ui-options-function-release-pulled-object = Отпустить перетаскиваемый предмет
ui-options-function-point = Указать на место
ui-options-function-rotate-object-clockwise = Повернуть по часовой стрелке
ui-options-function-rotate-object-counterclockwise = Повернуть против часовой стрелки
ui-options-function-flip-object = Перевернуть

ui-options-function-focus-chat-input-window = Открыть чат
ui-options-function-focus-local-chat-window = Открыть чат (IC)
ui-options-function-focus-emote = Открыть чат (Эмоции)
ui-options-function-focus-whisper-chat-window = Открыть чат (Шёпот)
ui-options-function-focus-radio-window = Открыть чат (Рация)
ui-options-function-focus-looc-window = Открыть чат (LOOC)
ui-options-function-focus-ooc-window = Открыть чат (OOC)
ui-options-function-focus-admin-chat-window = Открыть чат (Администрация)
ui-options-function-focus-dead-chat-window = Открыть чат (Мёртвые)
ui-options-function-focus-console-chat-window = Открыть чат (Консоль)
ui-options-function-cycle-chat-channel-forward = Сменить канал (Вперёд)
ui-options-function-cycle-chat-channel-backward = Сменить канал (Назад)
ui-options-function-open-character-menu = Открыть меню персонажа
ui-options-function-open-context-menu = Открыть контекстное меню
ui-options-function-open-crafting-menu = Открыть меню создания предметов
ui-options-function-open-inventory-menu = Открыть инвентарь
ui-options-function-open-a-help = Открыть обращение к администрации
ui-options-function-open-abilities-menu = Открыть меню действий
ui-options-function-open-emotes-menu = Открыть меню эмоций
ui-options-function-toggle-round-end-summary-window = Переключить окно итогов раунда
ui-options-function-open-entity-spawn-window = Открыть меню спавна сущностей
ui-options-function-open-sandbox-window = Открыть меню песочницы
ui-options-function-open-tile-spawn-window = Открыть меню спавна тайлов
ui-options-function-open-decal-spawn-window = Открыть меню размещения декалей
ui-options-function-open-admin-menu = Открыть меню администратора
ui-options-function-open-guidebook = Открыть справочник
ui-options-function-window-close-all = Закрыть все окна
ui-options-function-window-close-recent = Закрыть последнее окно
ui-options-function-show-escape-menu = Переключить меню игры
ui-options-function-escape-context = Закрыть последнее окно или переключить меню игры

ui-options-function-take-screenshot = Сделать снимок экрана
ui-options-function-take-screenshot-no-ui = Сделать снимок экрана (без интерфейса)
ui-options-function-toggle-fullscreen = Переключить полноэкранный режим

ui-options-function-editor-place-object = Разместить объект
ui-options-function-editor-cancel-place = Отменить размещение
ui-options-function-editor-grid-place = Разместить на сетке
ui-options-function-editor-line-place = Разместить линию
ui-options-function-editor-rotate-object = Повернуть
ui-options-function-editor-flip-object = Перевернуть
ui-options-function-editor-copy-object = Копировать

ui-options-function-show-debug-console = Открыть Консоль
ui-options-function-show-debug-monitors = Показать Мониторы DEBUG
ui-options-function-inspect-entity = Осмотреть Сущность
ui-options-function-inspect-entity-tooltip = Открыть окно ViewVariables для сущности, на которую указывает курсор.
ui-options-function-inspect-server-component = Осмотреть Серверный Компонент
ui-options-function-inspect-server-component-tooltip = Открыть окно ViewVariables для серверного компонента, заданного командой «quickinspect», у сущности под курсором.
ui-options-function-inspect-client-component = Осмотреть Клиентский Компонент
ui-options-function-inspect-client-component-tooltip = Открыть окно ViewVariables для клиентского компонента, заданного командой «quickinspect», у сущности под курсором.
ui-options-function-hide-ui = Скрыть Интерфейс

ui-options-function-hotbar1 = Ячейка панели действий 1
ui-options-function-hotbar2 = Ячейка панели действий 2
ui-options-function-hotbar3 = Ячейка панели действий 3
ui-options-function-hotbar4 = Ячейка панели действий 4
ui-options-function-hotbar5 = Ячейка панели действий 5
ui-options-function-hotbar6 = Ячейка панели действий 6
ui-options-function-hotbar7 = Ячейка панели действий 7
ui-options-function-hotbar8 = Ячейка панели действий 8
ui-options-function-hotbar9 = Ячейка панели действий 9
ui-options-function-hotbar0 = Ячейка панели действий 0
ui-options-function-hotbar-shift1 = Ячейка панели действий Shift+1
ui-options-function-hotbar-shift2 = Ячейка панели действий Shift+2
ui-options-function-hotbar-shift3 = Ячейка панели действий Shift+3
ui-options-function-hotbar-shift4 = Ячейка панели действий Shift+4
ui-options-function-hotbar-shift5 = Ячейка панели действий Shift+5
ui-options-function-hotbar-shift6 = Ячейка панели действий Shift+6
ui-options-function-hotbar-shift7 = Ячейка панели действий Shift+7
ui-options-function-hotbar-shift8 = Ячейка панели действий Shift+8
ui-options-function-hotbar-shift9 = Ячейка панели действий Shift+9
ui-options-function-hotbar-shift0 = Ячейка панели действий Shift+0
ui-options-function-loadout1 = Набор Панели Действий 1
ui-options-function-loadout2 = Набор Панели Действий 2
ui-options-function-loadout3 = Набор Панели Действий 3
ui-options-function-loadout4 = Набор Панели Действий 4
ui-options-function-loadout5 = Набор Панели Действий 5
ui-options-function-loadout6 = Набор Панели Действий 6
ui-options-function-loadout7 = Набор Панели Действий 7
ui-options-function-loadout8 = Набор Панели Действий 8
ui-options-function-loadout9 = Набор Панели Действий 9
ui-options-function-loadout0 = Набор Панели Действий 0
ui-options-function-loadoutshift1 = Набор Панели Действий Shift+1
ui-options-function-loadoutshift2 = Набор Панели Действий Shift+2
ui-options-function-loadoutshift3 = Набор Панели Действий Shift+3
ui-options-function-loadoutshift4 = Набор Панели Действий Shift+4
ui-options-function-loadoutshift5 = Набор Панели Действий Shift+5
ui-options-function-loadoutshift6 = Набор Панели Действий Shift+6
ui-options-function-loadoutshift7 = Набор Панели Действий Shift+7
ui-options-function-loadoutshift8 = Набор Панели Действий Shift+8
ui-options-function-loadoutshift9 = Набор Панели Действий Shift+9
ui-options-function-loadoutshift0 = Набор Панели Действий Shift+0

ui-options-function-shuttle-strafe-up = Сместиться вверх
ui-options-function-shuttle-strafe-right = Сместиться вправо
ui-options-function-shuttle-strafe-left = Сместиться влево
ui-options-function-shuttle-strafe-down = Сместиться вниз
ui-options-function-shuttle-rotate-left = Повернуть влево
ui-options-function-shuttle-rotate-right = Повернуть вправо
ui-options-function-shuttle-brake = Тормозить

## Network menu

ui-options-net-predict = Предсказание на стороне клиента

ui-options-net-interp-ratio = Размер буфера состояний
ui-options-net-interp-ratio-tooltip = Чем выше значение, тем меньше заметна потеря пакетов
                                      от сервера к клиенту. При этом
                                      немного увеличивается задержка, а клиенту
                                      приходится предсказывать больше будущих тиков.

ui-options-net-predict-tick-bias = Смещение тиков предсказания
ui-options-net-predict-tick-bias-tooltip = Чем выше значение, тем меньше заметна потеря пакетов
                                           от клиента к серверу. При этом
                                           немного увеличивается задержка, а клиенту
                                           приходится предсказывать больше будущих тиков.

ui-options-net-pvs-spawn = Лимит спавна сущностей PVS
ui-options-net-pvs-spawn-tooltip = Ограничивает частоту отправки сервером вновь созданных сущностей клиенту.
                                       Меньшее значение может уменьшить
                                       подтормаживания при спавне, но объекты могут появляться с задержкой.

ui-options-net-pvs-entry = Лимит сущностей PVS
ui-options-net-pvs-entry-tooltip = Ограничивает частоту отправки сервером сущностей, попавших в область видимости клиента.
                                       Меньшее значение может уменьшить
                                       подтормаживания, но объекты могут появляться с задержкой.

ui-options-net-pvs-leave = Частота удаления из PVS
ui-options-net-pvs-leave-tooltip = Ограничивает частоту удаления клиентом сущностей
                                       за пределами области видимости. Меньшее значение может уменьшить
                                       подтормаживания при перемещении, но иногда приводит
                                       к ошибкам предсказания и другим проблемам.

## Toggle window console command
cmd-options-desc = Открывает меню настроек. Можно указать вкладку.
cmd-options-help = Использование: options [вкладка]

## Accessibility menu

ui-options-accessibility-header-reduced-motion = Уменьшение Движения
ui-options-accessibility-header-visuals = Визуальные эффекты
ui-options-accessibility-header-content = Содержимое

ui-options-enable-color-name = Окрашивать имена персонажей
ui-options-colorblind-friendly = Режим для людей с дальтонизмом

ui-options-reduced-motion = Уменьшить интенсивность визуальных эффектов
ui-options-reduced-motion-tooltip = Показывает альтернативные спрайты с меньшей анимацией у некоторых предметов.

# accessibility option tooltips taken from CVar summary blocks.

ui-options-disable-ai-static = Помехи камер ИИ
ui-options-disable-ai-static-tooltip = Заменяет помехи камер ИИ простым градиентом.
ui-options-disable-blurry-vision = Размытое зрение
ui-options-disable-blurry-vision-tooltip = Заменяет движение в эффекте размытия статичным изображением.
ui-options-disable-drunk-overlay = Эффект опьянения
ui-options-disable-drunk-overlay-tooltip = Заменяет анимацию эффекта опьянения статичным смещением.
ui-options-disable-flash-effect = Вспышка
ui-options-disable-flash-effect-tooltip = Заменяет эффект вспышки вариантом с меньшим движением.
ui-options-disable-heat-distortion = Тепловые искажения
ui-options-disable-heat-distortion-tooltip = Уменьшает движение в эффекте теплового искажения.
ui-options-disable-nv-noise = Эффект ночного зрения
ui-options-disable-nv-noise-tooltip = Отключает шум в режиме ночного зрения.
ui-options-disable-rainbow-overlay = Радужный эффект
ui-options-disable-rainbow-overlay-tooltip = Заменяет движение в радужном эффекте статичным смещением.
ui-options-disable-singulo-warp = Сингулярность
ui-options-disable-singulo-warp-tooltip = Отключает искажение экрана возле сингулярности.

ui-options-screen-shake-intensity = Интенсивность тряски экрана

ui-options-chat-window-opacity = Непрозрачность окна чата
ui-options-speech-bubble-text-opacity = Непрозрачность текста в облачке речи
ui-options-speech-bubble-speaker-opacity = Непрозрачность имени в облачке речи
ui-options-speech-bubble-background-opacity = Непрозрачность фона облачка речи

ui-options-censor-nudity = Скрывать наготу персонажей

## Admin menu

ui-options-admin-player-panel = Список Игроков в Меню Администрации

ui-options-admin-player-tab-symbol-setting = Значки антагов в столбце персонажей
ui-options-admin-player-tab-symbol-setting-off = Без значков антагов
ui-options-admin-player-tab-symbol-setting-basic = Показывать стандартный значок антага
ui-options-admin-player-tab-symbol-setting-specific = Показывать значок конкретного антага

ui-options-admin-player-tab-role-setting = Настройки отображения ролей
ui-options-admin-player-tab-role-setting-roletype = Показывать тип роли
ui-options-admin-player-tab-role-setting-subtype = Показывать подтип
ui-options-admin-player-tab-role-setting-roletypesubtype = Показывать тип и подтип роли
ui-options-admin-player-tab-role-setting-subtyperoletype = Показывать подтип и тип роли

ui-options-admin-player-tab-color-setting = Настройки цветов
ui-options-admin-player-tab-color-setting-off = Ненавижу цвета
ui-options-admin-player-tab-color-setting-character = Окрашивать имена персонажей-антагов
ui-options-admin-player-tab-color-setting-roletype = Окрашивать все типы ролей
ui-options-admin-player-tab-color-setting-both = Окрашивать и имена, и типы ролей

ui-options-admin-overlay-title = Оверлей Администрации

ui-options-admin-overlay-antag-format = Стиль подписи антага
ui-options-admin-overlay-antag-format-binary = Указывать, является ли игрок антагом
ui-options-admin-overlay-antag-format-roletype = Показывать тип роли
ui-options-admin-overlay-antag-format-subtype = Показывать подтип

ui-options-admin-overlay-antag-symbol = Стиль значка антага
ui-options-admin-overlay-antag-symbol-off = Без значков антагов
ui-options-admin-overlay-antag-symbol-basic = Показывать стандартный значок антага
ui-options-admin-overlay-antag-symbol-specific = Показывать значок конкретного антага

ui-options-admin-enable-overlay-playtime = Показывать игровое время
ui-options-admin-enable-overlay-starting-job = Показывать начальную должность
ui-options-admin-overlay-merge-distance = Расстояние объединения меток
ui-options-admin-overlay-ghost-fade-distance = Расстояние от курсора для затухания меток призраков
ui-options-admin-overlay-ghost-hide-distance = Расстояние от курсора для скрытия меток призраков

ui-options-admin-strip-overlay-title = Оверлей Экипировки
ui-options-admin-strip-overlay-setting = Показывать оверлей экипировки по умолчанию
