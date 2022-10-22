#!/bin/bash
for run in {1..10} 
do 
date +%H:%M:%S 
ps -ef | egrep -v PID | wc -l
#sleep 5
done
 
touch /tmp/1.txt 
cat /proc/cpuinfo > /tmp/1.txt 
cat /etc/os-release | head -1 >> /tmp/1.txt
cat /etc/os-release | head -1 | grep -o Alpine >> /tmp/1.txt 
for run in {50..100} 
do 
touch /tmp/$run.txt
done
