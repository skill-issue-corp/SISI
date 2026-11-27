armor-examine-cancel-delayed-knockdown = - [color=green]Полностью отменяет[/color] отсроченное сбивание с ног электродубинкой.

armor-examine-modify-delayed-knockdown-delay =
    - { $deltasign ->
          [1] [color=green]Увеличивает[/color]
          *[-1] [color=red]Уменьшает[/color]
      } задержку перед сбиванием с ног электродубинкой на [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [one] секунду
          [few] секунды
          *[many] секунд
          [other] секунды
      }[/color].

armor-examine-modify-delayed-knockdown-time =
    - { $deltasign ->
          [1] [color=red]Увеличивает[/color]
          *[-1] [color=green]Уменьшает[/color]
      } время, на которое электродубинка сбивает с ног, на [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [one] секунду
          [few] секунды
          *[many] секунд
          [other] секунды
      }[/color].
