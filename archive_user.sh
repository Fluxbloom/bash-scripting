#!/bin/bash

for i in $@
do 
    echo "Executing script: $0"
    echo "Archiving user: $i"
# Lock account
    passwd -l $i
# Check if target dir exists/ make dir
    [ ! -d /home/archives/${i} ] && echo "directory to path does NOT exist, creating now..."
    mkdir -p /home/archives/${i}
# Back up verbose, preserve permissions w/datestamp    
    tar -zcvpf /home/archives/${i}-backup-$(date +%d-%m-%Y).tar.gz /home/${i} 
done

