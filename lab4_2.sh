#!/bin/sh
if [ $# -eq 1 ]
then
find ./lab3 -maxdepth 2 \( -name  "*.jpg" -o -name "*.png" \) -type f | 

while read file
do
    echo `realpath $file` | tr '/' '\\'
done

echo "lab3 4_2 done"
else
	echo "Wymagany jest  1 argumenty: katalog"
fi

