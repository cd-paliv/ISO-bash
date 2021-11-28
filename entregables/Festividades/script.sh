#!/bin/bash

if [ $# -ne 3 ]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

if ! [[ $2 =~ ^[0-9]+$ ]]; then
  echo "INVALID PARAMETERS"
  exit 1
fi

if [[ $2 -le 1 ]] || [[ $2 -gt $(cat fiestas-y-festivales.csv | wc -l) ]]; then
  echo "INVALID PARAMETERS"
  exit 1
fi


prov=$1
echo $(cat fiestas-y-festivales.csv | cut -d',' -f5 | grep -i "${prov}" | wc -l) #-l cuenta líneas

echo $(head -n $2 fiestas-y-festivales.csv | tail -1 | cut -d',' -f7)

fest=$3
echo $(cat fiestas-y-festivales.csv | cut -d',' -f18 | grep -i "${fest}" | wc -l)
