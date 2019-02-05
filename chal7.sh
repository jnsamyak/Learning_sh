#!/bin/bash
# Redirecting stdin using 'exec'.
# exec <filename command redirects stdin to a file. From that point on, all stdin comes from that file, rather than its normal source

exec 3<&0          # Link file descriptor
                   #3with stdin.
                   # Saves stdin.
    
          exec < temp.txt   # stdin replaced by file 
          read a1            # Reads first line of file 
          read a2            # Reads second line of file
          echo
          echo "Following lines read from file."
          echo $a1
          echo $a2
          exec 0<&3 3<&-
          #  Now restore stdin from fd #6, where it had been saved,
          #+ and close fd #6 ( 6<&- ) to free it for other processes to use.
          # <&3 3<&-    also works.
          echo -n "Enter data  "
          read b1  # Now "read" functions as expected, reading from normal stdin.
          echo "Input read from standard inputs :"      
          echo "b1 = $b1"
          echo
         
