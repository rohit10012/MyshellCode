#!/bin/bash


for LINE in $(cat /tmp/tmptmp)
do
 if [ $(cat /sdlinst/pwd_policy | grep -i $LINE) ]; then
   echo "$LINE" >> available.txt
 else
   echo "$LINE" >> unavailable.txt
 fi
done
