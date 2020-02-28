
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

