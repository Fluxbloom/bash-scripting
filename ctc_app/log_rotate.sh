#!/bin/bash

logs=$(find . -maxdepth 0 -type f -name "*.log*" | sort -rV)


for log in $logs;
do
    base=$(echo $log | rev | cut -d. -f2- | rev)
    ext=$(echo $log | rev | cut -d. -f1 | rev)

    let "new_ext=ext+1"
    mv "$log" "$base.$new_ext"
done

uniq_logs=$(find . -maxdepth 0 -type f -name "*.log*" | grep -E ".log$" | sort)

for log in $uniq_logs;
do
    touch $log
done
