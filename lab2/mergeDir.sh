#!/bin/sh

if [ $# -eq 3 ]
then
	cd $1
	touch $2
	for file in  ./*$3;
	do
		echo $file
		echo $file >> $2
		cat $file >> $2
	done
	echo "created $2 file  in $1 directory"

else
	echo "Wymagane sa 3 argumenty: katalog i nazwa pliku i rozszerzenie"
fi
