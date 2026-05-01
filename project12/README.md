# Write a shell script to check errors in error logs.

## Prereqisite
- The grep filter searches a file for a particular pattern of characters, and display all lines that contain that pattern. The pattern that is searched in the file is referred to as the regular expression(grep stands for global search for regular expression and print out).
- Inverting the pattern match: You can display the lines that arenot matched with the specified search search string pattern using the -v option.
- grep -v "devops" DevOps.txt
- Matching the lines that start with a string: grep "^devops" DevOps.txt
- Grep -n matched line numbers

Syntax:
- *grep [options] pattern [files]*

grep devops DevOps.txt
grep -c devops DevOps.txt
grep -ci devops DevOps.txt
grep -o devops DevOps.txt
grep -w devops DevOps.txt
grep -n devops DevOps.txt
grep -ni devops DevOps.txt
grep -v devops DevOps.txt
grep -vi devops DevOps.txt





