#!/bin/bash
max=0
echo -n "Enter Number between (5 to 9) : "
read max
if ! [ $max -ge 5 -a $max -le 9 ] ; then
   echo "I ask to enter number between 5 and 9, Try Again"
      exit 1
      fi
      clear
      for (( i=1; i<=max; i++ )) 
      do     
      for (( s=max; s>=i; s-- ))
          do
                 echo -n " "
                     done
                         for (( j=1; j<=i;  j++ ))     
                         do      
                         echo -n " o "      
                         done     
                         echo " " 
                         done 
                         for (( i=max; i>=1; i-- ))
                         do
                             for (( s=i; s<=max; s++ ))
                                 do
                                        echo -n " "
                                        done
                                        for (( j=1; j<=i;  j++ ))
                                        do
                                        echo -n " o "
                                        done
                                        echo " "
                                        done
