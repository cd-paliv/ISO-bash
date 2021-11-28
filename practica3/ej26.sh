#!/bin/bash

<<"enunciado"
 Escriba un script que reciba una cantidad desconocida de parámetros al momento de
 su invocación (debe validar que al menos se reciba uno). Cada parámetro representa
 la ruta absoluta de un archivo o directorio en el sistema.
 El script deberá iterar por todos los parámetros recibidos, y solo para aquellos
 parámetros que se encuentren en posiciones impares (el primero, el tercero, el
 quinto, etc.), verificar si el archivo o directorio existen en el sistema,
 imprimiendo en pantalla que tipo de objeto es (archivo o directorio). Además,
 deberá informar la cantidad de archivos o directorios inexistentes en el sistema.
enunciado

if [ $# -ge 1 ]; then #-ge = mayor o igual
  argumentos=($*)
  cont=0
  noexiste=0
  for i in ${argumentos[*]}; do
    if [ $(($cont % 2)) -eq 1 ]; then #si es impar
      if [ -e $i ]; then #si existe
        if [ -d $i ]; then #si es un directorio
           echo "El directorio $i existe"
        elif [ -f $i ]; then #si es un archivo
           echo "El archivo $i existe"
        fi
      else
        let noexiste++
      fi
    fi
    let cont++
  done
  echo "Cantidad de archivos o directorios inexistentes en el sistema: $noexiste"
fi
