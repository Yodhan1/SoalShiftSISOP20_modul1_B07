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
pswd=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 28 | head -n 1)
#echo"$pswd"

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
### soal2_dekripsi.sh
## Soal3:
### soal3.sh
