#!/bin/bash

for i in $@
do 
    echo "Executing script: $0"
    echo "Archiving user: $i"
    passwd -l $i
    [ ! -d /home/archives/${i} ] && echo "directory to path does NOT exist, creating now..."
    mkdir -p /home/archives/${i}
    
    tar -zcvpf /home/archives/${i}-backup-$(date +%d-%m-%Y).tar.gz /home/${i} 
done

# Lock the account
#passwd -l $1

# Create an archive of the home directory
#tar -cf /archives/${1}.tar.gz /home/${1} 
