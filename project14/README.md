# What is Sed?

- Sed command stands for stream editor.
- Sed command performs lot of functions like:
    . Viewing file contents
    . searching 
    . Find and replace
    . Insertion and deletion
- Sed also supports regular expressions which allows it perform complex pattern matching.     

## Advantages of sed over vi/vim editor
- Sed can perform any operations on file without opening the file.
- Sed syntax:
Sed[options] commands [file-to-work-with-sed]

## 1.Viewing file contents usking sed command
. Sed '' filename
. Sed 'p' filename(it will print output twice)
. Sed -n 'p' filename(This will ignore 2 times print)
. Sed -n '$p' filename(This will print last line)
. Sed -n '3, 10p' filename(It will print 3rd to 10th line)
. Sed '10d' filename(only while displaying delete 10th line number)
. Sed -l '2, 10d' filename(Delete in original file itself)
. Sed -i.back '2, 10d' filename(This will take backup before delete)

## Find and replace with sed
- Sed 's/root/devopsclass' filename(Substitute root with devops 1st word occurrence with new word)
- Sed 's/root/devopsclass/g' filename(Substitute root with devops globally in whole file)
- Sed -i.back 's/root/devopsclass/g' filename(Changed original file itself)
- Sed '/search/s/old/new/g' filename(Replaces the old word with new word if that new line consists of search word)

## Insertion and Deletion with sed command
- Insert a new line(sed 'line_numberi' filename)
- Sed -l(1i s_no name) filename
- Sed -l '1a ......' filename
- I and a(Insert before and insert after)