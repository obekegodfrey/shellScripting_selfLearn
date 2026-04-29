# For Loop in shell Scripting #

for variable in list
do
    command
done    

## What is exit status in shell scripting? ##
- Every linux or unix command executed by the shell script or user, has an exit status.
- The exit status is an integer number.
- For the absh shell's purposes, a command which exits with a zero(0) exit status has succeeded.
- A non-zero(1-255) exit status indicates failure.
- If a command is not found, the child process created to execute it returns a status of 127. If a command is found but is not executable, the return status is 126.
- All of the Bash builtins return exit status of zero if they succeed and a non-zero status on failure.

## What are Command_Line Arguments?
- Command-line arguments arguments are parameters that are passed to a script while executing them in the bash shell.
- They are also known as positional parameters in linux
- We use command-line arguments to denote the position in memory where the command and it's associated parameters are stored. Understanding the command-line arguments is essential for people who are learning shell scripting. 