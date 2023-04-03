#!/bin/bash

counter=1                   ##严格控制空格，错误写法：counter = 1，会报错
while [ $counter -lt 10 ]   ##严格控制空格
do
        echo "192.168.1.$counter"
        ((counter++))
done
