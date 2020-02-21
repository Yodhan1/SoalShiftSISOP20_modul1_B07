#!/bin/bash

#2a
pswd=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 28 | head -n 1)
#echo"$pswd"

#2b
read -p "input nama file > " var
if [[ "$var" =~ ^[A-Za-z]+$ ]]; then
echo $pswd > "$var".txt
else
echo "salah"
fi

#2c
