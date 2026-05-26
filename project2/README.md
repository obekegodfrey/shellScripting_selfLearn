# How to install software in multiple flavours of OS?

## Prerequisite:
- What is variable in shell scripting?
- What is if-else in shell scripting?

## variable in shell scripting
---

* **a)** A shell variable is a character string in shell that stores some value. It could be an integer, filename, string or some shell command itself. Basically, it is a pointer to the actual data stored in memory.

* **b)** Assigning a value to a variable: To assign a value to a variable, use the assignment operator (`=`). For example, to assign the value `"devops"` to a variable named `"name"`, the syntax would be:
```bash
name="devops"

```

* **c)** Using a variable in a command: To use a variable in a command, prefix the variable name with a dollar sign (`$`). For example, to print the value of the `"name"` variable, the syntax would be:
```bash
echo $name

```

* **d)** Performing operations on variables: You can perform operations on variables, such as arithmetic operations on numerical variables, or concatenation of strings. For example, to add the values of two numerical variables `"a"` and `"b"`, the syntax would be:
```bash
c=$((a + b))

```

* **e)** Using special variables: Shell scripting also supports special variables such as `$0`, which refers to the name of the script, `$1`, `$2`, `$3`, etc., which refer to the first, second, third, etc. command-line arguments passed to the script, and `$#`, which gives the number of command-line arguments passed to the script.

## if-Else 
- In shell scripting, the if-else statement is used to make decisions based on the values of variables or the results of commands. The basic syntax of an if-else statement is as follows:
* if [ condition ]; then
*    commands
* else
*    commands
* fi
- It's also possible to use elif(else if) statement which allows you to chain several conditions together. The syntax for using elif is:
* if [ condition1 ]; then
*   commands
* elif [ condition2 ]; then
*   commands
* else
*   commands
* fi

## project to check disk Utilization
* var = $(command-name-here)
* var = `command-name-here`
* AWK and cut command basics
* Read a file content
* Grep command