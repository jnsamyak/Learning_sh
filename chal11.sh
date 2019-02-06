#! /bin/bash
#use of until loop
End_c=end

until [ "$var1" = "$End_c" ]
# Tests condition here, at top of loop.
do
  echo "Input variable "
  echo "(Enter $End_c to exit)"
  read var1
  echo "variable #1 = $var1"
  echo
done  
       # an "until" loop permits C-like test constructs.
       LIMIT=10
       var=0
       until (( var > LIMIT ))
       do  
       echo -n "$var "
       (( var++ ))
       done   
       echo 
              # 0 1 2 3 4 5 6 7 8 9 10 
               #expected output 
