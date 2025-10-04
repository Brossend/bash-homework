#!/bin/bash
if [ -z "$1" ]; then
    echo "Использование: $0 <число>"
    exit 1
fi

for (( i=$1; i>=0; i-- ))
do
    echo "$i"
    sleep 1
done
