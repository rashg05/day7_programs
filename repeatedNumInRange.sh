#!/bin/bash -x

read -p "Enter the upper value of the range : " range

indexb=0
for ((i=1;i<=$range;i++))
do
	num=$i
	indexa=0
	counter=0
	while [ $num -ne 0 ]
	do
	   array[indexa]=$((num%10))
	   num=$(($num/10));
	   ((indexa++))
	done

		for((j=0;j<$((${#array[@]}-1));j++))
		do
			for((k=$(($j+1));k<${#array[@]};k++))
			do
		    	   if [ ${array[j]} -eq ${array[k]} ]
		    	   then
			  	((counter++))
		    	   fi
			done
		done
	if [ $counter -eq 1 ]
	then
		store[indexb]=$i
		((indexb++))
	fi
done
echo "We found ${#store[@]} numbers"
echo "The numbers in which only a single digit is repeated twice are:"
for show in ${!store[@]}
do
	echo ${store[show]}
done
