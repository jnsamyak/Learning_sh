#! /bin/bash
#extracting all the username through password file 
PASSWORD_FILE=/etc/passwd  
echo "PASSWORD_FILE is given the location of the actual file"
n=1 #to initialize the loop and to keep acheck on no of programs
for name in $(awk 'BEGIN{FS=":"}{print $1}' < "$PASSWORD_FILE" )
# Field separator is used to seprate between the texts or files colon is used 
# 2nd statement is show $1 which indicates the first feild of the file
# < this shows that password file acting as a input that points to begin condition
do
  echo "USER #$n = $name"
    let "n += 1" #1st is always root so we can check with it
    done
  echo "USERNAME/USER PROGRAM DISPLAYED"
