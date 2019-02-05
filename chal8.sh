#! /bin/bash
#read a file content from the bash
echo "Reading of the file content from the bash"
echo 
echo "METHOD 1 by input redirection"
while read file
do 
    echo $file
done < chal8.sh 
#where the point directs will go in parameter p the stream of that content go in that direction it is input re diection tream of that file content is redirect to that loop
echo 
echo "METHOD 2 by using single variable"

cat chal8.sh | while read file
# content which is used at left side is acting as input for the the while  loop
do 
    echo $file
done
echo 
echo "METHOD 3 by internal feild seprator it tells the shell how to do word spillting how to recognize the boundary"
while IFS=' ' read -r file
              #we are not assigning read to ifs we are assinging space to ifs eeither we can add a space via single bracket
            #-r is used to remove the blackspaces and back escapes characters
do
    echo $file
done < chal8.sh
echo "All the entered file were already in the script , Do you want to check it dynamically ?"
    read -e answer
    if [[ "$answer" = "yes" || "$answer" = "YES" ]]
    then 
        echo -e "Enter the Path : \c"
        read path
         while IFS=' ' read -r file
         do
         echo $file
         done < $path
   fi
