echo "1a."
awk -F '	' '{a[$13]+=$21} END {for (i in a) print i" "a[i]}' Sample-Superstore.tsv | sort -nr | tail -1
echo " "
echo "1b."
awk -F '	' '{if($13 == "Central") a[$11]+=$21} END {for (i in a) print a[i]" "i}' Sample-Superstore.tsv | sort -n | head -2
echo " "
echo "1c."
awk -F '	' '{if($13 == "Central" && ($11 == "Illinois" || $11 == "Texas")) a[$17]+=$21} END {for (i in a) print a[i]" "i}' Sample-Superstore.tsv | sort -n | head -10
