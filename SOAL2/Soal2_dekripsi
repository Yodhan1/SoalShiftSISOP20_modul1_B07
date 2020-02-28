#! /bin/bash
Jam=`cat $1`
String=${1%.*}
Bawah="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
Atas=`echo $Bawah | tr"a-z" "A-Z"`
rm $1
mv  "$(echo $String | tr "a-z" "${Bawah:$Jam:26}"  | tr "A-Z" "${Atas:$Jam:26}" ).txt" "$1"

