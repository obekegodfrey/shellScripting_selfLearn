# Project: Create a menu driven program which can do 4 actions, addition, subtraction, multiplication and division.

## Prerequisite:
Function in shell scripting and acse statement in shell

A function is a block of code that is reusable and performs certain operations. Like any other programming language. Shell scripting also supports functions. Functions are popular for the following reasons:

- Help to reuse a piece of code.
- Improve the readability of the program.
- Make the program modular.
- Make maintenance easier.

- Functions concept reduces the code length.
- Two ways to define a function.

function function_name
{
    commands/statements
}

function_name() 
{
    commands/statements
}

# Case Statement
- Yiou can use multiple if..elif statments to perform a multiway branch. However, this is not always the best solution, especially when all of the branches depend onthe value of a single variable.
- Shell supports case..esac statement which handles exactly this situation and it does so more efficiently than repeated if..elif statements.

# syntax
case word in
    pattern1)
        Statement(s) tobe executed if pattern1 matches 
        ;;
    pattern2)
        Statement(s) tobe executed if pattern2 matches 
        ;;  
    pattern3)
        Statement(s) tobe executed if pattern3 matches 
        ;;  
    *)
        Default condition to be executed
        ;;
esac                

