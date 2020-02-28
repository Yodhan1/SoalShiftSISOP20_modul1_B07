#!/bin/bash

for ((i=1 ; $i<29 ;i++))
do
wget -O "/home/yodhan/workspace/Soal3/PDKT_Kusuma_$i" http://loremflickr.com/320/240/cat -a /home/yodhan/workspace/Soal3/wget.log
done
grep "Location: /cache" wget.log > location.log
