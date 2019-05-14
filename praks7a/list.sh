#!/bin/bash
#
echo -n "sisestage kataloogi nimi mille kohta soovite informatsiooni (täistee): ";read kataloog
nimi=$(ls -la $kataloog | awk '{if(NR>1)print $9}')
ft=$(ls -la $kataloog | awk '{if(NR>1)print substr ($0, 0, 2)}')
number=1
fail=0
kaust=0
link=0
for type in $ft
do
	if [ $type == '-' ]
	then
		echo -n "fail: "
		let fail++
	elif [ $type == 'd' ]
	then
		echo -n "kaust: "
		let kaust++
	elif [ $type == 'l']
	then
		echo -n "link: "
		let link++
	fi
	echo $nimi | cut -d ' ' -f$number
	let number++
done
echo "Selles kaustas on $fail faili, $kaust kausta ja $link linki..."
