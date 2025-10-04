#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Использование: $0 <исходная_директория> <директория_резервных_копий>"
    exit 1
fi

src=$1
dst=$2
date_suffix=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$dst"

for file in "$src"/*; do
    if [ -f "$file" ]; then
        base=$(basename "$file")
        cp "$file" "$dst/${base}_${date_suffix}"
    fi
done

echo "Резервное копирование завершено. Файлы скопированы в $dst"
