#! /bin/bash
Jam=`date '+%H'`
String=${1%.*}
Bawah="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
Atas=`echo $Bawah | tr"a-z" "A-Z"`
mv "$1" "$(echo $String | tr "a-z" "${Bawah:$Jam:26}" | tr "A-Z" "${Atas:$Jam:26}").txt"
$Jam > $1


