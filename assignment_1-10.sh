#!/bin/bash

# printing hello world
echo "hello world"

# Use of "echo" command
echo "Printing text with newline"
echo -n "Printing text without newline"
echo -e "\nRemoving \t backslash \t characters\n"

# Use of comment
# "#" symbol is used to add single line comment in bash script.

# Use of Multi-line comment
: '
The following script calculates
the square value of the number, 5.
'
((area=5*5))
echo $area

# Using While Loop
valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done

# Using For Loop
for (( counter=10; counter>0; counter-- ))
do
echo -n "$counter "
done
printf "\n"

# Get User Input
echo "Enter Your Name"
read name
echo "Welcome $name to LinuxHint"

# Using if statement
n=10
if [ $n -lt 10 ];
then
echo "It is a one digit number"
else
echo "It is a two digit number"
fi

# Using if statement with AND logic
echo "Enter username"
read username
echo "Enter password"
read password

if [[ ( $username == "admin" && $password == "secret" ) ]]; then
echo "valid user"
else
echo "invalid user"
fi

# Using if statement with OR logic
echo "Enter any number"
read n

if [[ ( $n -eq 15 || $n  -eq 45 ) ]]
then
echo "You won the game"
else
echo "You lost the game"
fi
