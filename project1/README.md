# What is Shell Script?

- A shell script is a list of commands in a computer program that is run by the unix shell which is a command line interpreter. A shell script usually has comments that describe the steps. The different operations performed by shell scripts are program execution, file manipulation and text printing.
- the shell is a program that takes commands from the keyboard and gives them to the operating system to perform. In the old days, it was the only user interface available on a unix-like system such as Linux. Nowdays, we have graphical user interfaces(GUIs) in addition to command line(CLIs) such as the shell.
- Types of shell?
  . cat/etc/shells
- The most recent is bash shell, so we will learn about the same.  

## What is shebang in Linux shell scripting?
- #!/bin/bash
- This #! is called shebang or hashbang. The shebang plays an important role in shell scripting, specially while dealing with different types of shell.
- The shebang is the combination of the #(pound key) and !(exclamation mark). This character combination has a special meaning when it is used in the very first line of the script. It is used to specify the interper with which the given script will be run by default.
- So, if the first line of a script is: #!/bin/bash it means the interpreter should be bash shell. If the first line is : this.

## How to run first script in Linux?
- vi demo.sh Create script.
- #!/bin/bash echo "Hello World".
- chmod +x demo.sh Permission set.
- ./demo.sh to execute the shell script.