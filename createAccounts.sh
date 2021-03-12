#! /bin/bash
mkdir scriptFilesBerch
cd scriptFilesBerch
wget https://raw.githubusercontent.com/dominictarr/random-name/master/first-names.txt
wget https://raw.githubusercontent.com/arineng/arincli/master/lib/last-names.txt
shuf last-names.txt | tail -n 100 | tr [:upper:] [:lower:] | awk ' { $0=toupper(substr($0,1,1))substr($0,2); print } ' >shuf first-names.txt | tail -n 100 > first-names_temp.txt
paste first-names_temp.txt last-names_temp.txt -d "," > firstlast
cd ../
