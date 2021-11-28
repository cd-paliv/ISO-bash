#!/bin/bash

if [ $# -ne 2 ]; then
  "INVALID PARAMETERS"
  exit 1
fi

datos=$(cat 100_CC_Records_-_100_CC_Records.csv | grep $1 | grep "$2" | cut -d',' -f4,11)
nrosT=()
cant=0

while read -r linea; do
  nrosT[${#nrosT[*]}]=$( echo $linea | cut -d',' -f1 )

  let "cant=cant + $( echo $linea | cut -d',' -f2 )" 2> /dev/null
done <<< "$datos"


echo ${nrosT[*]}
echo $cant
