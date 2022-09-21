#!/bin/bash

# Delete a File
echo "Enter filename to remove"
read fn
rm -i $fn

# Append to File
echo "Before appending the file"
cat book.txt

echo "Learning Laravel 5">> book.txt
echo "After appending the file"
cat book.txt

# Test if File Exist
filename=$1
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi

# Send Email
Recipient=”admin@example.com”
Subject=”Greeting”
Message=”Welcome to our site”
`mail -s $Subject $Recipient <<< $Message`

# Get Parse Current Date
Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"

# Wait Command:
echo "Wait command" &
process_id=$!
wait $process_id
echo "Exited with status $?"

# Sleep Command
echo “Wait for 5 seconds”
sleep 5
echo “Completed”
