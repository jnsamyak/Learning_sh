#! /bin/bash
echo -e "Enter the file name: \c"
read
if [ -f $REPLY ]
then
        if [ -w $REPLY ]
        then
            echo " YOU CAN ENTER THE TEXT IN THE $REPLY FILE, FOR QUITTING AFTER WRITING IN THE FILE PRESS Ctrl+D ."
            cat >> $REPLY 
         else 
            echo "The file does not have a write permission."
         fi
else
   echo "The file does not exist."  
   echo "Do you want to create the file ?"
        read -e ans
        if [ "$ans" = "yes" ]
        then
        echo "FileName to be created :"
        read -e name
        touch $name
        echo "File Created !!"
        fi
fi    

