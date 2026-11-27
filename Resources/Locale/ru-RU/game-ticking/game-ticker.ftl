game-ticker-restart-round = Перезапуск раунда...
game-ticker-start-round = Раунд начинается...
game-ticker-start-round-cannot-start-game-mode-fallback = Не удалось запустить режим {$failedGameMode}! Включаем резервный режим {$fallbackMode}...
game-ticker-start-round-cannot-start-game-mode-restart = Не удалось запустить режим {$failedGameMode}! Перезапускаем раунд...
game-ticker-start-round-invalid-map = Выбранная карта {$map} не подходит для режима {$mode}. Режим может работать некорректно...
game-ticker-unknown-role = Неизвестно
game-ticker-delay-start = Начало раунда отложено на {$seconds} сек.
game-ticker-pause-start = Начало раунда приостановлено.
game-ticker-pause-start-resumed = Обратный отсчёт до начала раунда возобновлён.
game-ticker-player-join-game-message = Добро Пожаловать в Space Station 14! Если вы играете впервые, обязательно прочитайте правила игры и обращайтесь за помощью в LOOC (локальный OOC) или OOC (обычно доступен только между раундами).
game-ticker-get-info-text = Привет и добро пожаловать в [color=white]Space Station 14![/color]
                            Текущий раунд: [color=white]#{$roundId}[/color]
                            Сейчас игроков: [color=white]{$playerCount}[/color]
                            Текущая карта: [color=white]{$mapName}[/color]
                            Текущий режим игры: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-get-info-preround-text = Привет и добро пожаловать в [color=white]Space Station 14![/color]
                            Текущий раунд: [color=white]#{$roundId}[/color]
                            Сейчас игроков: [color=white]{$playerCount}[/color] ([color=white]{$readyCount}[/color] {$readyCount ->
                                [one] готов
                                [few] готовы
                                *[many] готовы
                            })
                            Текущая карта: [color=white]{$mapName}[/color]
                            Текущий режим игры: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-no-map-selected = [color=yellow]Карта ещё не выбрана![/color]
game-ticker-player-no-jobs-available-when-joining = При попытке присоединиться к игре не оказалось свободных должностей.

# Displayed in chat to admins when a player joins
player-join-message = Игрок {$name} присоединился.
player-first-join-message = Игрок {$name} впервые присоединился.

# Displayed in chat to admins when a player leaves
player-leave-message = Игрок {$name} вышел.

latejoin-arrival-announcement = На станцию прибывает {$character} ({$job})!
latejoin-arrival-announcement-special = {$job} {$character} на борту!
latejoin-arrival-sender = Станция
latejoin-arrivals-direction = Скоро прибудет шаттл, который доставит вас на станцию.
latejoin-arrivals-direction-time = Шаттл, который доставит вас на станцию, прибудет через {$time}.
latejoin-arrivals-dumped-from-shuttle = Таинственная сила мешает вам улететь на шаттле прибытия.
latejoin-arrivals-teleport-to-spawn = Таинственная сила телепортирует вас с шаттла прибытия. Удачной смены!

preset-not-enough-ready-players = Не удалось запустить {$presetName}. Требуется игроков: {$minimumPlayers}. Сейчас готово: {$readyPlayersCount}.
preset-no-one-ready = Не удалось запустить {$presetName}. Среди игроков нет готовых.

game-run-level-PreRoundLobby = Лобби перед раундом
game-run-level-InRound = Раунд идёт
game-run-level-PostRound = После раунда
