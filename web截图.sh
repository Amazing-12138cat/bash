#!/bin/bash
cat ./ip.txt|while read ip
do
        cutycapt --url=https://$ip --out=$ip.png --max-wait=5000 --insecure
        if test ! -f $ip.png; then 
        #echo $ip
                echo $ip >> ./error.txt
        else
                echo $ip
        fi
done
