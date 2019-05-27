#!/bin/sh

if [ $# -eq 1 ]
then
	cd $1
	for D in  'find . -type d' ;
	do
		echo "$D"
		mv echo "$D/*" ./
		rm -drf ./$D
	done
	echo "moved all subfolder files to $1 directory"

else
	echo "Wymagany jest  1 argumenty: katalog"
fi
