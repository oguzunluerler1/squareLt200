#!/bin/bash

j=1;
i=1;
array1=("");
while [ $i -gt 0 ]
do
	kare=$(($j*$j));
	if [ $kare -ge 200 ]
	then
		i=0;
		continue
	fi
	array1+=("${j}");
	j=$(($j+1));
done
toplam=0;
for value in "${array1[@]}"
do
	toplam=$(( $toplam + value ));
done

echo "The sum of positive integers which have a square value less than 200 is ${toplam}.";
