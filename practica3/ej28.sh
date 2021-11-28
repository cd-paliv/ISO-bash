#!/bin/bash

<<"enunciado"
Realice un script que reciba como parámetro el nombre de un directorio. Deberá
validar que el mismo exista y de no existir causar la terminación del script
con código de error 4. Si el directorio existe deberá contar por separado la
cantidad de archivos que en él se encuentran para los cuales el usuario que
ejecuta el script tiene permiso de lectura y escritura, e informar dichos valores
en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
tampoco deberán ser tenidos en cuenta para la suma a informar.
enunciado

if [ $# -eq 1 ]; then
  if [ -d $1 ]; then
    cant=0
    for i in $(ls -l $1 | cut -d"-" -f3); do
      if [ $i = "rw" ]; then
        let cant++
      fi
    done
    echo $cant
  else
    exit 4
  fi
fi
