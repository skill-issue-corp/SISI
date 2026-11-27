round-end-discord-round = Закончился раунд: `#{$roundId}`
round-end-discord-duration = Продолжительность: `{$duration}`

round-end-discord-duration-hours = {$hours ->
        [one] {$hours} час
        [few] {$hours} часа
       *[other] {$hours} часов
    }
round-end-discord-duration-minutes = { $minutes } { $minutes ->
    [one] минута
    [few] минуты
   *[other] минут
}
round-end-discord-duration-seconds = { $seconds } { $seconds ->
    [one] секунда
    [few] секунды
   *[other] секунд
}

round-end-discord-gamemode = Режим: `{$gamemode}`
round-end-discord-info =
    Информация:
    ```{$info}```
round-end-discord-total-players = Всего было игроков: `{$count}`
round-end-discord-players =
    Игроки:
    ```{$players}```
round-end-discord-player = - {$ic}({$ooc}) в роли: {$role}
