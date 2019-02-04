#! /bin/bash
#introduction to function
echo "This is second script from script 4"
echo "Script to count the lines"
# Link filedescriptor 1 with standard input
exec 1<&0
# standard input replaced with a file supplied as a first argument and we know that first argument will be the name given to check its lines count
exec < $1
# argument 1 as input file
in=$1
echo "Input File : $in"
file="temp.txt"
#introducing a  variable so to keep check on the loop
i=0
# this while loop go over all lines of the file
while read LINE
do
# just the number while loop udate incrment of i function will lead to number of lines
((i=i+1))
# write current line to a tmp file with name $file
echo $LINE > $file
done
echo "Number of lines: $i "
#cat ${file} is used for displaying the last line of the file
echo "The last line of the file is: `cat ${file}` "
# REFERENCE BY .SH WEBSITE THAT WE CAN TAKE THE REFERENCE USING A COMMAND OF wc in shell
echo "Expected number of lines: `wc -l $in` "
# restore standard input from filedescriptor 1 and close filedescriptor 1
exec 0<&1 1<&-
#`` backticks are used to execute the command before the shell the command and it provide as an argument to  an active command
#exec is used to  replace the bash shell to the command shell process written after the exec 

