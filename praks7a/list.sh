#!/bin/bash
#
echo -n "sisestage kataloogi nimi mille kohta soovite informatsiooni (täistee): ";read kataloog # loetakse sisend
nimi=$(ls -la $kataloog | awk '{if(NR>1)print $9}')	# siin on defineeritud väärtused, mida edaspidi kasutatakse
ft=$(ls -la $kataloog | awk '{if(NR>1)print substr ($0, 0, 2)}') # defineeritud failitüüp
number=1
fail=0
kaust=0
link=0
for type in $ft	#läbi lastakse "ft"
do
	if [ $type == '-' ]	# kui ft on "-", siis...
	then
		echo -n "fail: "	# on tegu failiga
		let fail++		# ja lisatakse failile +1 ### Üleval on näha et esialgu on faili väärtus 0, niisamuti ka teistel ###
	elif [ $type == 'd' ]	# kui ft on "d", siis...
	then
		echo -n "kaust: "	# on tegu kataloogiga
		let kaust++
	elif [ $type == 'l']	# kui ft on "l" siis...
	then
		echo -n "link: "	# on tegu lingiga
		let link++	# lisatakse linglie +1
	fi
	echo $nimi | cut -d ' ' -f $number
	let number++
done
echo "Selles kaustas on $fail faili, $kaust kausta ja $link linki..."
