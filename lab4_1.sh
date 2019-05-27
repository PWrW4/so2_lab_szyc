#!/bin/sh
if [ $# -eq 1 ]
then
find ./ -name "*.txt" -type f | tail -8

echo "lab3 4_1 done"
else
	echo "Wymagany jest  1 argumenty: katalog"
fi

