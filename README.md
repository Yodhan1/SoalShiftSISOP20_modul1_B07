# SoalShiftSISOP20_modul1_B07
## Soal1:
### soal1.sh
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
