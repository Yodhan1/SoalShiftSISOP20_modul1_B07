# SoalShiftSISOP20_modul1_B07
## Soal1:
### soal1.sh
```
echo "1a."
awk -F '	' '{a[$13]+=$21} END {for (i in a) print i" "a[i]}' Sample-Superstore.tsv | sort -nr | tail -1
```
``` awk -F```
Berfungsi untuk menghilangkan separator, yaitu 'tab'

```{a[$13]+=$21}```
Menghitung jumlah profit (kolom 21), kemudian dimasukan dalam array tiap region (kolom 13).

```{for (i in a) print i" "a[i]}```
Looping untuk mencetak nama region beserta profitnya.

```sort -nr```
Mengurutkan dari yang besar ke kecil.

```tail -1```
Mengambil urutan terbawah dari hasil sort.

```
echo "1b."
awk -F '	' '{if($13 == "Central") a[$11]+=$21} END {for (i in a) print a[i]" "i}' Sample-Superstore.tsv | sort -n | head -2
```
```{if($13 == "Central") a[$11]+=$21}```
Berdasarkan hasil yang didapat dari soal A, yaitu "Central". Maka perlu di cek terlebih dahulu apakah state yang dicek berada pada region Central. Jika ya, maka akan dihitung jumlah profit (kolom 21), kemudian dimasukan dalam array tiap state (kolom 11).

```{for (i in a) print i" "a[i]}```
Looping untuk mencetak nama state beserta profitnya.

```sort -n```
Mengurutkan dari yang kecil ke besar.

```head -2```
Mengambil urutan 2 teratas.

```
echo "1c."
awk -F '	' '{if($13 == "Central" && ($11 == "Illinois" || $11 == "Texas")) a[$17]+=$21} END {for (i in a) print a[i]" "i}' Sample-Superstore.tsv | sort -n | head -10
```
```{if($13 == "Central" && ($11 == "Illinois" || $11 == "Texas")) a[$17]+=$21}```
Bedasarkan hasil dari soal A dan B. Maka perlu di cek terlebih dahulu apakah product name yang dicek berada dalam 2 state dengan profit terkecil, yaitu Texas & Illinois. Jika ya, maka akan dihitung jumlah profit (kolom 21), kemudian dimasukkan dalam array tiap Product Name (kolom 17).

```{for (i in a) print a[i]" "i}```
Looping untuk mencetak nama Product name beserta profitnya.


```sort -n```
Mengurutkan dari yang kecil ke besar.

```head -10```
Mengambil urutan 10 teratas.
## Soal2:
### soal2.sh
```
#2a
i=0
while [ i -eq 0 ]; do
  pswd=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 28 | head -n 1)
  if [[ $pswd =~ [A-Z] ]]; then
    if [[ $pswd =~ [a-z] ]]; then
      if [[ $pswd =~ [0-9] ]]; then
        i=1
      fi
    fi
  fi
  #echo"$pswd"
done
#2b
read -p "input nama file > " var
if [[ "$var" =~ ^[A-Za-z]+$ ]]; then
echo $pswd > "$var".txt
else
echo "salah"
fi
```

``` pswd=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 28 | head -n 1)``` 
Merupakan algoritma untuk men-generate password secara acak.

```if [[ $pswd =~ [A-Z] ]]; then```
Mengecek apakah ada A-Z jika iya masuk

```if [[ $pswd =~ [a-z] ]]; then```
Mengecek apakah ada a-a jika iya masuk

```if [[ $pswd =~ [0-9] ]]; then```
Mengecek apakah ada 0-9 jika iya masuk

```read -p "input nama file > " var```
Menginput nama file yang kita inginkan.
```
if [[ "$var" =~ ^[A-Za-z]+$ ]]; then
echo $pswd > "$var".txt
else
echo "salah"
fi
```
Syarat nama file yang bisa dibuat adalah semuanya alphabet, jika syarat terpenuhi maka hasil dari password yang telah di-generate akan disimpan dalam file .txt yang telah kita buat. Jika nama file nya tidak memenuhi syarat, maka akan keluar "salah".
### soal2_enkripsi.sh
```
#!/bin/bash
Jam=`date '+%H'`
String=${1%.*}
Bawah="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
atas=$Bawah | tr "a-z" "A-Z"
#mv "$1" "$($String | tr "a-z" "${Bawah:$(Jam):26}" | tr "A-Z" "${Atas:$(Jam):26}").txt"
```
```Jam=`date '+%H'```
mengambil jam sekarang untuk di decode

```String=${1%.*}```
menghilangkan txt di belakang file

```
Bawah="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
atas=$Bawah | tr "a-z" "A-Z"
```
memasukan batasan dari abjad

```#mv```
mengubah nama file dengan mv

```"$($String | tr "a-z" "${Bawah:$(Jam):26}" | tr "A-Z" "${Atas:$(Jam):26}").txt"```
menenkripte file menjadi nama lain dengan bantuan jam

### soal2_dekripsi.sh
## Soal3:
### soal3download.sh
```
#!/bin/bash

for ((i=1 ; $i<29 ;i++))
do
wget -O "/home/yodhan/workspace/Soal3/PDKT_Kusuma_$i" http://loremflickr.com/320/240/cat -a /home/yodhan/workspace/Soal3/wget.log
done
grep "Location: /cache" wget.log > location.log
```
```for ((i=1 ; $i<29 ;i++))```
untuk mengambil donwload file sebanyak 28 buah

```wget```
mengambil file dari internet

```-O "/home/yodhan/workspace/Soal3/PDKT_Kusuma_$i" ```
untuk membuat file dengan nama PDKT_Kusuma_i

```http://loremflickr.com/320/240/cat```
lokasi link

```-a /home/yodhan/workspace/Soal3/wget.log```
menyimpan log dalam bentuk wget.log

```grep "Location: /cache" wget.log > location.log```
menyimpan hasil location ke location.log

### CorntabSoal3
```5 6,14,22 * * 0-5 /bin/bash /home/yodhan/workspace/soal3.sh```
menjalankan kodingan mulai dari jam 06:05 dan 8 jam kelipatannya kecuali hari sabtu

### Soal3.sh
```

#!/bin/bash

tempkenangan=`ls -1 "kenangan" | wc -l `
tempduplicate=`ls -1 "duplicate" | wc -l  ` 
if [ $tempkenangan -eq 0 ]; then
    tempkenangan=1
fi
if [ $tempduplicate -eq 0 ]; then
    tempduplicate=1
fi
for (( i=1; i<29; i++ ))
do
    if [ -f PDKT_Kusuma_$i ]; then
        count=0
        for (( j=1; j<29; j++ ))
        do
            if [ -f PDKT_Kusuma_$j ] && [ $i -ne $j ] && [ `cat location.log | head -$i | tail -1` -eq `cat location.log | head -$j | tail -1`];then
                count=$((count+1))
            fi
        done
        if [ $count -gt 1];then
            rm "PDKT_Kusuma_$i"
        elif [ $count -eq 1 ]; then
            mv "PDKT_Kusuma_$i" "./duplicate/Duplicate_$tempduplicate"
            tempdpulicate=$(($tempduplicate+1))
        fi
    fi

done

for (( i=1; i<29; i++ ))
do
    if [ -f PDKT_Kusuma_$i ]; then
        mv "PDKT_Kusuma_$i" "./kenangan/Kenangan_$tempkenangan"
        $tempkenangan=$((tempkenangan+1))
    fi
done

cat wget.log >> wget.log.bak
```
```tempkenangan=`ls -1 "kenangan" | wc -l ` ```
mendapatkan jumlah file di kenangan

```tempduplicate=`ls -1 "duplicate" | wc -l  ` ```
mendapatkan jumlah file di duplicate

```if [ $tempkenangan -eq 0 ]; then```
jika kenangan kosong maka diset valuenya 1

```if [ $tempduplicate -eq 0 ]; then```
jika duplicate kosong maka diset valuenya 1

```if [ -f PDKT_Kusuma_$i ]; then```
jika ada file i maka kodingan lanjut

```count=0```
untuk menghitung kesamaan dalam file kusuma

```[ -f PDKT_Kusuma_$j ] && [ $i -ne $j ]``` 
untuk mengecek apakah filenya ada dan tidak sama dengan yang dipakai

```[ `cat location.log | head -$i | tail -1` -eq `cat location.log | head -$j | tail -1`];then```
mengecek di baris mana file tersebut berada dalam log dan mengambil hanya baris tersebut

```count=$((count+1))```
jika ditemukan kemiripan maka akan menambah count

```if [ $count -gt 1];then```
jika sama lebih dari 2 maka 

```rm "PDKT_Kusuma_$i"```
delete file

```elif [ $count -eq 1 ]; then```
jika hanya mirip 1 file 

```mv "PDKT_Kusuma_$i" "./duplicate/Duplicate_$tempduplicate"```
memindahkan file kedalam duplicate

```tempdpulicate=$(($tempduplicate+1))```
menaikan jumlah file duplicate

```if [ -f PDKT_Kusuma_$i ]; then```
jika mengecek apakah filenya masih ada

```mv "PDKT_Kusuma_$i" "./kenangan/Kenangan_$tempkenangan"```
untuk memindahkan file ke kenangan

```$tempkenangan=$((tempkenangan+1))```
menambahkan kenangan

```mv wget.log  wget.log.bak```
memindahkan file log kedalam wget.log.bak
