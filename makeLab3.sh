#!/bin/sh

rm -rf ./lab3

mkdir ./lab3
mkdir ./lab3/A
mkdir ./lab3/A/B
mkdir ./lab3/A/B/C
mkdir ./lab3/D
mkdir ./lab3/D/E

echo "test20" > ./lab3/D/plik20;
echo "test30" > ./lab3/D/E/plik30;
echo "test10" > ./lab3/A/B/C/plik10;

for i in $(seq 1 9); 
do 
	echo "creating plik$i";
	echo "test$i" > ./lab3/A/plik$i; 
done

echo "lab3 structure created"

ln -s ../../A/plik1 ./lab3/D/E/link_plik1
ln -s ../../A/B/C/plik10 ./lab3/D/E/link_plik10

ln -s `realpath ./lab3/A/B/C/plik10` ./lab3/D/E/link_plik10_bez
ln -s `realpath ./lab3/A/B/C` ./lab3/D/E/link_ABC_bez

for i in $(seq 1 9); 
do 
	echo "symlinking plik$i"
	ln -s ../../plik$i ./lab3/A/B/C/link_plik$i
done

echo "lab3 3 done"


