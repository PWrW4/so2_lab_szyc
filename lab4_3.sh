#!/bin/sh
if [ $# -eq 1 ]
then
find ./lab3 -type f -size +1k -exec rm {} \;

echo "lab3 4_3 done"
else
	echo "Wymagany jest  1 argumenty: katalog"
fi

