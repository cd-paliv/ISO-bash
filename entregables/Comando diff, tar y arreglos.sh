#!/bin/bash

mkdir input &>/dev/null #crea carpeta de ser necesario
  #&>/dev/null redirige todos los descriptores de archivos a /dev/null
tar -xf input.tar -C input #descomprime archivo tar en carpeta input. x: Extraer el archivo. f: Nombre del archivo.
vectorP=($(ls input/p*)) #lista (guarda en el vector) todos los archivos que empiezan con p
vectorS=($(ls input/s[0-9]*)) #lista todos los archivos que empiezan con s y un nro

vectorDiferencias=()
cant=0

for ((i=0;i<${#vectorP[*]};i++)); do #de 0 al tamaño del vectorP

  diff -q ${vectorP[$i]} ${vectorS[$i]} &>/dev/null #comparo
  vectorDiferencias[i]=$? #guardo el resultado de la última línea

  if [ ${vectorDiferencias[$i]} -eq 1 ]; then #si ese resultado es 1
    let cant++ #le sumo 1 a la cantidad de diferencias
  fi

done

echo ${vectorDiferencias[*]}
echo $cant
