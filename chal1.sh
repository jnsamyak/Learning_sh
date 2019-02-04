#! /bin/bash
#Introducing functions
#Example of using arguments to a script
echo "This is 1st script [c1]"
echo "My first name is $1"
echo "My surname is $2"
echo "Total number of arguments is $#" 
echo "Includes functions !"
set -e
#creation of the functions
print_date ()
{ 
echo "0th element : $0 " 
#so first or zero index is used to store location 
echo "1th element : $1 " 
#1st index reads the arguments ,written with function calls
echo "2th element : $2 "
 #2nd index and so on if nothing is written it reads as blank input


# example of using arguments to a script
echo "Today is `date +"%A %d %B %Y (%r)"`"
return
}
#to call a function we will use its name to call it
print_date argument1

# -exit- will exit with the last command along with its status
exit $?
#$? it reads the exit status of the last executed command
