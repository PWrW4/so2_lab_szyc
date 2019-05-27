#!/bin/sh

if [ $# -eq 1 ]
then
find ./ -name "*.txt" -type f | tail -8

echo "lab3 4_1 done"

find $1 -maxdepth 2 \( -name  "*.jpg" -o -name "*.png" \) -type f | 
while read file
do
    echo `realpath $file` | tr '/' '\\'
done

echo "lab3 4_2 done"

find $1 -type f -size +1k -exec rm {} \;

echo "lab3 4_3 done"
else
	echo "Wymagany jest  1 argumenty: katalog"
fi
