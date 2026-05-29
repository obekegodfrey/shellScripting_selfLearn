#!/bin/bash

a=10
b=5

echo `expr $a + $b`  # Addition
echo `expr $a - $b`  # Subtraction
echo `expr $a \* $b`  # Multiplication (note the escape character for the asterisk)
echo `expr $a / $b`  # Division
echo `expr $a % $b`  # Modulus
