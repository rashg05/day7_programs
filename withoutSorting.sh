#!/bin/bash -x

for((index=0;index<10;index++))
do
	array[index]=$(( (RANDOM%900)+100 ))
done
echo "The numbers are: " ${array[@]}

max=${array[0]}
min=${array[0]}
for  ind in ${!array[@]}
do

	if [ $max -lt ${array[ind]} ]
	then
	max2=$max
	max=${array[ind]};
	elif [[ $max2 -lt ${array[ind]} ]]
	then
		max2=${array[ind]}
	fi

	if [ $min -gt ${array[ind]} ]
	then
	min2=$min
	min=${array[ind]}
	elif [[ $min2 -gt ${array[ind]} ]]
	then
		min2=${array[ind]}
	fi
done

echo "The second largest element is: " $max2
echo "The second smallest element  is: " $min2
