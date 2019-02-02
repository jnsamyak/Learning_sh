#! /bin/bash

#use of case system for creation of file
echo " What you want to create a directory/file ?"
read fname
if [ $fname = "file" ]
then
echo "Enter the file name:"
read name
echo "Enter which type of file you want to create:{scipt,text,c,cpp file}"
read type
case $type in
    "text" )
        echo "Your file of $type is created." 
        touch $name.txt ;;
    "script" )  
        echo "Your file of $type is created." 
        touch $name.sh ;;
    "c" )
        echo "Your file of $type is created."
        touch $name.c ;;
    "cpp" )    
        echo "Your file of $type is created." 
        touch $name.cpp ;;
   * )
        echo "No,the file type doesn't exist." ;;
   #* for matching of any text
esac

elif [ $fname = "directory" ]
then
echo "Enter the directory name:"
read dname
mkdir $dname

else
echo "Entered command is incorrect, boot again and enter the valid command."

fi
