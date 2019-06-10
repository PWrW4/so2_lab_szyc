import os
import sys
import stat
from collections import Counter
from string import ascii_lowercase

if len(sys.argv) < 2:
    print("brak argumentow: plik")
    exit()

f = open(sys.argv[1], "r")

wordcount = Counter(f.read().split())

f.close()

print("Ilosc wyrazow: " + str(sum(wordcount.values())))

for item in wordcount.most_common(): 
    print("{}\t{}".format(*item))

print()
print()

f = open(sys.argv[1], "r")
txt = f.read()
f.close()

white = txt.count(' ')
new_lines = txt.count('\n')

txt = filter(lambda x: x in ascii_lowercase, txt.lower())
chars = Counter(txt)

print("Ilosc spacji: " + str(white))
print("Ilosc nowych lini: " + str(new_lines+1))

print()
print()

for item in chars.most_common(): 
    print("{}\t{}".format(*item))
    
print()
print()

    
