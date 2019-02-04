#! /bin/bash
#this script includes use of various flags in the shell
echo "This is the third script ."
echo "Here we will check use of various flags using an acount information"

person_info ()
{
echo -e "Enter your name : \c"
#-e flag is used to keep the text inline with the previous text \c  is supported by -e flag
read -a name
#-a flag is used to take/read input as an array 
echo "Your first name is ${name[0]} and surname is ${name[1]}"
echo "Entered information correct ?"
read reply
    if [[ $reply = "yes" || $reply = "YES" ]]
        then
        echo -e "Enter your password : \c"
        read -s password
        #-s flag hides the input given by the user 
        #-s is used to take inut in secret manner and is stored in the respective variable
        else
        echo "For changing the information "
            person_info 
        fi
        

}
person_info
echo
echo "Now testing of flags using various file checks"
echo
file_check ()
{
echo  "Enter the file name: "
read
#when no variable is entered the value goes into the built in varialbe REPLY which can be accessed generally
if [ -f $REPLY ]
#-f flag is used to check wheather file exist or not
    then
        echo "The file $REPLY exists"
        if [ -w $REPLY ]
        # -w flag is used to check the write permission
        #similarly we have -b -c flag to check the block and character specific file respectively
               then
                     echo "The file[$REPLY] have a write permission."
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
    echo "Do you want to check for other file?"
read -e reply2
    if [[ $reply2 = "yes" || $reply2 = "YES" ]]
    then
    file_check
    else
    echo "Function performed"
    fi

  fi    

}
file_check
exit $?
