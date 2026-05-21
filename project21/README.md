# get mysql all running process using shell

- Colors in Shell scripting
- IFS in Shell scripting

Color In  shell

- Color  Foreground_Code  Background_Code

. Black 30 40
. Red   31  41
. Green 32 42
. Yellow 33 43
. Blue 34 44
. Magenta 35 45
. Cyan 36 46
. Light Gray 37 47

* To change the color of the text, what we want is the foreground code. There are also a few other non-color special codes that are relevant to us:

| Code | Description |
| --- | --- |
| **0** | Reset/Normal |
| **1** | Bold text |
| **2** | Faint text |
| **3** | Italics |
| **4** | Underlined text |

* The `echo` command prints out text. We need to tell it that we're working with special ANSI codes, not just regular characters. This can be accomplished by adding a `\e` at the beginning to form an escape sequence. The escape sequence for specifying color codes is `\e[COLORm` (`COLOR` represents our color code in this case). By default, `echo` does not support escape sequences. We need to add the `-e` option to enable their interpretation.