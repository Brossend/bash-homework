#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Использование: $0 <имя_файла> <искомое_слово> <новое_слово>"
    exit 1
fi

file=$1
search=$2
replace=$3

if [ ! -f "$file" ]; then
    echo "Файл $file не найден!"
    exit 1
fi

sed -i "s/$search/$replace/g" "$file"
echo "Все вхождения '$search' заменены на '$replace' в файле $file"
