#!/bin/sh

echo "lab 5"
echo "lab 5a"

ps aux | awk {'print "User " $1  " proc " $11 " (CPU " $3 " , MEM " $4 ")"'}

echo "lab 5b"

ps aux | awk {'print "User " $1  " proc " parts[split($11, parts,"/")] " (CPU " $3 " , MEM " $4 ")"'}

echo "lab 5c"

ps aux | awk '{cpu += $3; mem += $4} END  {print "CPU " cpu " %\n"  "MEM " mem " %"}'

echo "lab 5d"

ps aux | awk '{cpu[$1] += $3; mem[$1] += $4} END  {for (i in cpu) print "User: " i "\n" "CPU " cpu[i] " %\n"  "MEM " mem[i] " %"}'

echo "lab 5 done"

