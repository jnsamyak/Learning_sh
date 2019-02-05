#! /bin/bash
#use of for and wildcard
dir=0 #list of directories
fil=0 #list of files
echo "This script is written to make aware of all the files/directories" 
for file in * 
#here * is used to include all the files and directory on which we are currently  working on
do
    if [ -d $file ]
    then
    echo "These are the list of the directories:"
    ((dir=dir+1))
    echo $file
    fi
    echo
    echo "---------------------------------------------------------"
    if [ -f $file ]
    then
    ((fil=fil+1))
    echo "These are the list of the files:"
    echo
    echo $file
    fi
done
    echo "---------------------------------------------------------"
    echo "Total no of files: $fil"
    echo "Total no of directories: $dir"

