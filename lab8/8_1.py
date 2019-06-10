#!/usr/bin/python
import string
import sys
import fileinput


if len(sys.argv) < 4:
    print("brak argumentow: plik co na_co")
    exit()


with open(sys.argv[1], 'r') as file :
  filedata = file.read()

filedata = filedata.replace(sys.argv[2],sys.argv[3])

with open(sys.argv[1], 'w') as file:
  file.write(filedata)

#with fileinput.FileInput(sys.argv[1], inplace=True, backup='.bak') as file:
#    for line in file:
#        print(line.replace(sys.argv[2],sys.argv[3]), end='')

