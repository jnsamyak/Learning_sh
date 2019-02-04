#Print the server environment
#! /bin/bash
echo "This is my 6th script[c6]"
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
                                                                                         
 #Disable filename globbing.
 set -f

 # Header tells browser what to expect.
 echo Content-type: text/plain
 echo

 echo CGI/1.0 test script report:
 echo

 echo environment settings:
 set
 echo

 echo whereis bash?
 whereis bash
 echo


 echo who are we?
 echo ${BASH_VERSINFO[*]}
 echo

 echo argument of c is $#. argument of v is "$*".
 echo

 exit 0




