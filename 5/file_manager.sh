#!/bin/bash
dir_name="test_dir"

mkdir -p "$dir_name"
cd "$dir_name" || exit

touch file1.txt file2.txt file3.txt
echo "Созданы файлы: file1.txt, file2.txt, file3.txt"

rm file1.txt file2.txt file3.txt
echo "Файлы удалены."

cd ..
rmdir "$dir_name"
echo "Директория $dir_name удалена."
