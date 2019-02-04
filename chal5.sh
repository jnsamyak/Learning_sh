#! /bin/bash
echo "This is the fifth script [c5]"
#We will check the various list in our directory and will try to convert them into lowecase and removes the white spaces
echo "The list of file in the directory are as follows:"
ls
echo -e "Do you want to look through their permissions?"
    read  reply
    if [[ $reply = "YES" || $reply = "yes" ]]
        then
        ls -al
        fi
        c=$0
#follow up : 
#1.loop to read the c=values in ls
#2.will refine as ls may also contains the directory 
#3.values as in the list {name of the file}
#4.assign a variable and perform its name by transposing it either by comparing or by assigning by a local variable
#and finally check
#* is used as wildcard which s used to include all  
# some pron=blem with this while c in *
    for c in `ls`
    do 
    #2 to check
    if [ ! -f "$c" ];
    then 
    continue
    fi
    #use backticks because of pre processing do to use it as the argument for my local variable
    localv = $(echo "$c" | tr A-Z a-z)
    if [[ $localv != $c ]]; then
    mv $localv $c
#mv command moves, or renames, files and directories on your filesystem
    fi
    done
#copied below needs some rectification
    find -name "* *" -type f | rename 's/ /-/g'
            
