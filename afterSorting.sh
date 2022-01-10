#!/bin/bash
for ((i = 0; i < 10; i++));
do
## fill array with random values
    a[i]=$(($RANDOM % 900 + 100))

done
echo ${a[@]}
len=${#a[@]}

for((i=0;i<$len;i++))
do
        for((j=$i+1;j<$len;j++))
        do
                if((${a[i]}>${a[j]}))
                then
                        temp=${a[i]};
                        a[i]=${a[j]};
                        a[j]=$temp;
                fi
        done
done
echo ${a[@]}
echo "second smallest element ${a[1]}"
echo "second largest element ${a[8]}"
