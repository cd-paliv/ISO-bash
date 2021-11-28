#!/bin/bash

if [ $# -ne 1 ]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

if [ $1 -le 0 ]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

f1="x"
cant=0
for i in $(cat 2013_2020.csv); do
  suma=$( echo $i | cut -d',' -f2-7 | tr ',' '+' | bc ) #bc = Basic Calculator
  if [ $suma -eq $1 ]; then
    let cant++
    if [[ $f1 = "x" ]]; then
      f1=$( echo $i | cut -d',' -f1 )
    fi
    ffin=$( echo $i | cut -d',' -f1 )
  fi
done

echo $cant
if [[ $f1 != "x" ]]; then
  echo $f1
  echo $ffin
fi

exit 0
