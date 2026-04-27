# Project: Check if docker service is active or not. #

## Prerequisite ##
Cut command usage, awk command

 ## What is Cut command in linux ##
 - The cut command in linux is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of a line by *byte position, character and field*. Basically the cut command slices a line and extracts the text
 *cut OPTION... [FILE]...*
 *cut -b 1,2,3*
 cut -c 1,2,3
 *-f (field):* *-c* option is useful for fixed-length lines. Most files doesn't have fixed-length lines. To extract the useful information you need to cut by fields rather than columns. List of the fields. *Cut* uses *tab* as a default field delimiter but can also work with other delimiter by using *-d* option.
 *Note:* Space is not considered as delimiter in UNIX.
