#!/bin/bash

# pull the third line from each file in this directory and add it to a new file
#> outputtext/newfile.txt
num=$(ls -1 *.txt | wc -l)

for (( i=1; i<=$num; i++ ))
do
	currFile="file_$i.txt"

	lines=()

	while IFS=  read -r line
	do
		lines+=("$line")
	done < $currFile
	
	printf "From File: %s\nLine #3: %s" "$currFile"  "${lines[3]}" >> textoutput/newfile.txt
	echo -e ' \n ' >> textoutput/newfile.txt

done
