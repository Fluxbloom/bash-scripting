#!/bin/sh

MY_SHELL="csh"

if [ "${MY_SHELL}" = "bash" ]
then
    echo "you don't seem to like bash terminals"
elif [ "${MY_SHELL}" = "csh" ]
then   
    echo "you seem to like csh terminals"
else
    echo "you don't seem to like bash or csh terminals"
fi
