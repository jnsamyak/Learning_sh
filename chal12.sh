#! /bin/bash
#exploring read only commands
#readonly doesnt allow to overwrite variables
    echo "Readonly Commands"
    echo
    #to make a function read only 
    person_info () {
    echo -e "Enter your name : \c"
    read -a name
    echo -e "Enter your age : \c"
    read age
    echo -e "Enter your number : \c"
    read number
    }
        #now to make a function read-only
    readonly -f person_info
    person_info
    display_info () {
    echo "-----INFORMATION OF THE USER-----"
    echo "NAME : ${name[@]} "
    echo "AGE : $age "
    echo "CONTACT : $number "
    }
    readonly -f display_info
    echo "Use of readonly?"
    echo "Do you want to change the entities in the function? (let you want to add adress)"
    read reply
    if [[ $reply = "yes" || $reply = "YES" ]]
        then
            person_info () {
    echo -e "Enter your name : \c"
    read -a name
    echo -e "Enter your age : \c"
    read age
    echo -e "Enter your number : \c"
    read number
    echo -e "Enter your address : \c"
    read -a add
    
    }
    display_info () {
    echo "-----INFORMATION OF THE USER-----"
    echo "NAME : ${name[@]} "
    echo "AGE : $age "
    echo "CONTACT : $number "
    echo "ADDRESS : ${add[@]} "
    }
            display_info
        else
           echo "Okay, information has been set in the script"
        fi
    echo "Therefore we can see if we press yes it shows readonly error"

    echo
    echo "-----------To check all the Readonly predefined var-----------"
    readonly -p
    echo "-----------To check all the Readonly predefined functions-----------"
    readonly -f
