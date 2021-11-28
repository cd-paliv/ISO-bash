#!/bin/bash

if [ $# -eq 2 ]; then
  if [ $1 -le 1 ] || [ $2 -le 0 ]; then
    echo "INVALID PARAMETERS"
    exit 1
  fi

  titulo=$(head -1 aeropuertos_detalle.csv | cut -d";" -f$2)
  nombre=$(head -$1 aeropuertos_detalle.csv | tail -1 | cut -d";" -f$2)
  cantOcurrencias=$(cat aeropuertos_detalle.csv | cut -d";" -f$2 | grep $nombre | wc -l)

<<"res"
  contL=0
  for linea in $(cat aeropuertos_detalle.csv); do
    let contL++
    if [ $contL -eq $1 ]; then
      nombre=$( echo $linea | cut -d";" -f$2 )
      break
    fi
  done

  cantOcurrencias=0
  for linea in $(cat aeropuertos_detalle.csv); do
    if [ $nombre == $( echo $linea | cut -d";" -f$2) ]; then
      let cantOcurrencias++
    fi
  done
res

  echo $nombre
  echo $titulo
  echo $cantOcurrencias

fi
