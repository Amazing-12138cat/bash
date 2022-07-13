#!/bin/bash
cat ./ip.txt | while read ip
do
        cutycapt --insecure --url=https://$ip --max-wait=5000 --out=$ip.png
        if test ! -f $ip.png; 
        then
                echo $ip
        else
                echo $ip >>./error.txt
        fi
done
