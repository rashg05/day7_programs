#!/bin/bash
read -p "enter the number:= " number
echo " prime factors of $number are:= ";
for((i=1;i<=$number;i++))
do
        if(($number%$i==0))
        then
                counter=1;
                for(( j=2;j<$i;j++))
                do
                        div=$(($i % $j ));
                        if(($div == 0))
                        then
                                ((counter++  ));
                        fi
                done
                if(( $counter == 1 ))
                then
                        a+=("$i")

                fi

        fi
done
echo ${a[@]}
