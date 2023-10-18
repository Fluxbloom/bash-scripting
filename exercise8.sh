#!/bin/sh
# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

TARGETS="$@"

echo $TARGETS
# Needed to keep below ${TARGETS} var out of quote, so it could be split into multiple arguements, otherwise it will be treated as a single item

for TARGET in ${TARGETS}
do
    if  [ -f ${TARGET} ]
    then
        echo "${TARGET} is a regular file"

    elif [ -d ${TARGET} ]
    then
         echo "${TARGET} is a directory" && echo $(ls -l ${TARGET})
 
    fi    
done
