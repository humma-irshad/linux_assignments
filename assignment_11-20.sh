#!/bin/bash

# Using else if statement
echo "Enter your lucky number"
read n

if [ $n -eq 101 ];
then
echo "You got 1st prize"
elif [ $n -eq 510 ];
then
echo "You got 2nd prize"
elif [ $n -eq 999 ];
then
echo "You got 3rd prize"

else
echo "Sorry, try for the next time"
fi

# Using Case Statement
echo "Enter your lucky number"
read n
case $n in
101)
echo echo "You got 1st prize" ;;
510)
echo "You got 2nd prize" ;;
999)
echo "You got 3rd prize" ;;
*)
echo "Sorry, try for the next time" ;;
esac

# Get Arguments from Command Line
echo "Total arguments : $#"
echo "1st Argument = $1"
echo "2nd argument = $2"

# Get arguments from command line with names
for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $index in
X) x=$val;;

Y) y=$val;;

*)
esac
done
((result=x+y))
echo "X+Y=$result"

# Combine String variables
string1="Linux"
string2="Hint"
echo "$string1$string2"
string3=$string1+$string2
string3+=" is a good tutorial blog site"
echo $string3

# Get substring of String
Str="Learn Linux from LinuxHint"
subStr=${Str:6:5}
echo $subStr

# Add Two Numbers
echo "Enter first number"
read x
echo "Enter second number"
read y
(( sum=x+y ))
echo "The result of addition=$sum"

# Make Directory
echo "Enter directory name"
read newdir
`mkdir $newdir`

Make directory by checking existence
echo "Enter directory name"
read ndir
if [ -d "$ndir" ]
then
echo "Directory exist"
else
`mkdir $ndir`
echo "Directory created"
fi

# Read a File
file='book.txt'
while read line; do
echo $line
done < $file
