#! /bin/bash
# Exercising the 'date' command
echo "The number of days since the year's beginning is `date +%j`."
# Needs a leading '+' to invoke formatting. 
            # %j gives day of year.

echo "The number of seconds elapsed since 01/01/2018 is `date +%s`."
#  %s yields number of seconds since "UNIX epoch" began,
    

    prefix=temp
    suffix=$(date +%s)  # The "+%s" option to 'date' is GNU-specific.
    filename=$prefix.$suffix
    echo "Temporary filename = $filename"


exit 0
