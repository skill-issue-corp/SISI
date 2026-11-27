# SPDX-FileCopyrightText: 2022 Eoin Mcloughlin <helloworld@eoinrul.es>
# SPDX-FileCopyrightText: 2022 Flipp Syder <76629141+vulppine@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Vera Aguilera Puerto <6766154+Zumorica@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 eoineoineoin <eoin.mcloughlin+gh@gmail.com>
# SPDX-FileCopyrightText: 2022 vulppine <vulppine@gmail.com>
# SPDX-FileCopyrightText: 2023 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 c4llv07e <38111072+c4llv07e@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Southbridge <7013162+southbridge-fur@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# UI

## Window

air-alarm-ui-title = Воздушная Сигнализация

air-alarm-ui-access-denied = Недостаточно прав доступа!

air-alarm-ui-window-pressure-label = Давление
air-alarm-ui-window-temperature-label = Температура
air-alarm-ui-window-alarm-state-label = Состояние

air-alarm-ui-window-address-label = Адрес
air-alarm-ui-window-device-count-label = Всего Устройств
air-alarm-ui-window-resync-devices-label = Синхронизировать заново

air-alarm-ui-window-mode-label = Режим
air-alarm-ui-window-mode-select-locked-label = [bold][color=red] Сбой переключателя режима! [/color][/bold]
air-alarm-ui-window-auto-mode-label = Автоматический режим

-air-alarm-state-name = { $state ->
    [normal] Норма
    [warning] Предупреждение
    [danger] Опасность
    [emagged] Емагнуто
   *[invalid] Недопустимо
}

air-alarm-ui-window-listing-title = {$address} : {-air-alarm-state-name(state:$state)}
air-alarm-ui-window-pressure = {$pressure} кПа
air-alarm-ui-window-pressure-indicator = Давление: [color={$color}]{$pressure} кПа[/color]
air-alarm-ui-window-temperature = {$tempC} °C ({$temperature} K)
air-alarm-ui-window-temperature-indicator = Температура: [color={$color}]{$tempC} °C ({$temperature} K)[/color]
air-alarm-ui-window-alarm-state = [color={$color}]{-air-alarm-state-name(state:$state)}[/color]
air-alarm-ui-window-alarm-state-indicator = Состояние: [color={$color}]{-air-alarm-state-name(state:$state)}[/color]

air-alarm-ui-window-tab-vents = Вентиляция
air-alarm-ui-window-tab-scrubbers = Скрубберы
air-alarm-ui-window-tab-sensors = Датчики

air-alarm-ui-gases = {$gas}: {$amount} моль ({$percentage}%)
air-alarm-ui-gases-indicator = {$gas}: [color={$color}]{$amount} моль ({$percentage}%)[/color]

air-alarm-ui-mode-filtering = Фильтрация
air-alarm-ui-mode-wide-filtering = Фильтрация (расширенная)
air-alarm-ui-mode-fill = Заполнение
air-alarm-ui-mode-panic = Паника
air-alarm-ui-mode-none = Нет


air-alarm-ui-pump-direction-siphoning = Откачка
air-alarm-ui-pump-direction-scrubbing = Очистка
air-alarm-ui-pump-direction-releasing = Подача

air-alarm-ui-pressure-bound-nobound = Без Ограничений
air-alarm-ui-pressure-bound-internalbound = Внутреннее Ограничение
air-alarm-ui-pressure-bound-externalbound = Внешнее Ограничение
air-alarm-ui-pressure-bound-both = Оба

air-alarm-ui-widget-gas-filters = Газовые Фильтры

## Widgets

### General

air-alarm-ui-widget-enable = Включено
air-alarm-ui-widget-copy = Копировать настройки на похожие устройства
air-alarm-ui-widget-copy-tooltip = Копирует настройки этого устройства на все устройства на этой вкладке воздушной сигнализации.
air-alarm-ui-widget-ignore = Игнорировать
air-alarm-ui-atmos-net-device-label = Адрес: {$address}

### Vent pumps

air-alarm-ui-vent-pump-label = Направление вентиляции
air-alarm-ui-vent-pressure-label = Ограничение давления
air-alarm-ui-vent-external-bound-label = Внешнее ограничение
air-alarm-ui-vent-internal-bound-label = Внутреннее ограничение

### Scrubbers

air-alarm-ui-scrubber-pump-direction-label = Направление
air-alarm-ui-scrubber-volume-rate-label = Расход (л)
air-alarm-ui-scrubber-wide-net-label = ШирокаяЗона
air-alarm-ui-scrubber-select-all-gases-label = Выбрать все
air-alarm-ui-scrubber-deselect-all-gases-label = Снять все выделения

### Thresholds

air-alarm-ui-sensor-gases = Газы
air-alarm-ui-sensor-thresholds = Пороговые значения
air-alarm-ui-thresholds-pressure-title = Пороговые значения (кПа)
air-alarm-ui-thresholds-temperature-title = Пороговые значения (K)
air-alarm-ui-thresholds-gas-title = Пороговые значения (%)
air-alarm-ui-thresholds-upper-bound = Опасность при превышении
air-alarm-ui-thresholds-lower-bound = Опасность при снижении
air-alarm-ui-thresholds-upper-warning-bound = Предупреждение при превышении
air-alarm-ui-thresholds-lower-warning-bound = Предупреждение при снижении
air-alarm-ui-thresholds-copy = Копировать пороговые значения на все устройства
air-alarm-ui-thresholds-copy-tooltip = Копирует пороговые значения датчика на все устройства на этой вкладке воздушной сигнализации.
