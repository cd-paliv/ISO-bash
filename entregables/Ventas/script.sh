#!/bin/bash

if [ $# -ne 2 ]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

arreglo=()
suma=0
valores=$(cat 100_Sales_Records.csv | grep $1 | grep $2 | cut -d',' -f2,3,5,9)

while read -r i; do
  nombre=$( echo $i | cut -d',' -f1 )
  prioridad=$( echo $i | cut -d',' -f3 )
  if [[ $nombre = $1 ]] && [[ $prioridad = $2 ]]; then
    arreglo[${#arreglo[*]}]=$( echo $i | cut -d',' -f2)
    let suma+=$( echo $i | cut -d',' -f4)
  fi
done <<< "$valores"

if [ $suma -ne 0 ]; then
  for i in ${arreglo[*]}; do
    echo $i
  done
  echo $suma
fi

exit 0
