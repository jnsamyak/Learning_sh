#! /bin/bash
echo "Welcome to testing software"

echo "Enter by creating the account"
echo "Enter your name"
read -e name
echo "Enter your password"
read -se password
echo "Your password has been created"
echo 
echo "Do you want to create an directory?"
read -e reply
if [ $reply = "yes" ] || [ $reply = "YES" ]
then
echo -e  " Enter Directory Name: \c" 
read diname
mkdir $diname
echo "Directory has been created !"
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
            echo -e "Do you want to add the permission? \c"
            read response
            if [ $response = "yes" ] || [ $response = "YES" ]
            then
            chmod ug=rw $REPLY
                   echo "Permission Granted."
            fi
         fi
else
   echo "The file does not exist."  
   echo "Do you want to create the file ?" 
   read -e ans
   if [ "$ans" = "yes" ]
   then
        echo "Enter password to create the file"
        read -se sud_pass
        if [ $sud_pass = $password ]
        then
        echo "FileName to be created :"
        read -e name
        touch $name
        echo "File Created !!"
        fi
fi
fi
else    
echo "No, directory has been created !"
echo -e "Do you want to open the list of directory ? \c"
read reply2
if [ $reply2 = "yes" ] || [ $reply2 = "YES" ]
then 
dir
echo "These are the list of the directories."
fi

fi
echo "Do you want to download any links?"
read q1
if [[ $q1 -eq "yes" ]]
then
echo "Enter name of the url{http://___.__}"
read -e name

exec wget http://$name;
else
echo "Thanks for software check"
fi
