array[0]=$(( (RANDOM%9)+1 ))
array[1]=$(( (RANDOM%9)+1 ))
num=$((${array[0]}+${array[1]}))
array[2]=$((-1*$num))
echo "The three numbers are: " ${array[@]}
for index in ${!array[@]}
do
	a=$(($a+${array[index]}))
done
echo "The addition of the three numbers = " $a
