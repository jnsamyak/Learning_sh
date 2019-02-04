#! /bin/bash
echo "This is the fourth script [c4]"
echo "----------CONNECTIVITY STATUS----------"
echo
echo "To check connectivity with the connected ethernet /internet : Press ctrl+c to exit"
ping www.google.com
echo "Do you want to open some links?"
read -e ans
    if [[ $ans = "yes" || $ans = "YES"  ]]
        then
        echo "Is elink installed?"
            read -e ans1
                    if [[ $ans1 = "NO" || $ans1 = "no"  ]]
                    then
                    sudo apt install elinks
                    else
                    echo "After opening of dialog box you can enter your desired website"
                    delay=10s
                    elinks
                    fi
        else
        echo "Do something else the internet is of no use :P"
        fi
#everything is quite understandale in case of ambiguity kindly ping 
        
