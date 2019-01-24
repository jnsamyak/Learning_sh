#! /bin/bash
#This file include various use of variables in the shell scrippting.
    echo "**INTRODUCTION OF VARIABLES **"
#variables are of wo types
    echo "Two Types of variable"
    echo #by writing echo it gives a gap for an enter space
    echo "1.SYSTEM VARIABLE "
    echo "2.USER-DEFINED VARAIABLE"    
#the way to difference the two is that they system vaiable are in capital while the user defined need not to be
#HERE ARE SOME OF THE EXAMPLES FOR THE SYSTEM VARIABLE  #every variable starts with dollar sign
    echo "   THE NAME OF THE BASH :" $BASH 
    echo "   THE BASH VERSION IS :"  $BASH_VERSION
    echo "   TELLS ABOUT THE HOME DIRECTORY :" $HOME
    echo "   TELLS ABOUT THE PRESENT DIRECTORY :" $PWD
#Normally define the variable and using the variable using the $ symbol in the command
    echo
    echo "SOME USER DEFINED ?"
    val=10
    echo "Tell the value by uservar $val"
# to take input from user
    read -p "ENTER YOUR NAME :" name #-p is a flag to read input in the same line 
    echo "  ENTERED NAME : $name "
# we can take multiple input at the same time
    echo " Enter Your AGE and CONTACT NUM : "
    read  age num 
    echo "  ENTERED AGE :" $age
    echo "  ENTERED NUMBER :" $num 
#other flags are -s to take input as password and storesin bash var and -a tp store things n an array like structure
    read -sp " CREATE PASSWORD : " password #both s and p flag are used 
    echo
    echo "ENTER ADDRESS:"
    read  address
    echo "ENTERED ADDRESS:" $address
# when we dont add any varaible for read then  it get ivoked by the help of the reply system variable and can be accessed in the same-way
    echo
    echo "      _-_-THANKS-_-_"
