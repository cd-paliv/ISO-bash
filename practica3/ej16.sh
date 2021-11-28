#!/bin/bash

#Realizar un script que reciba como parámetro una extensión y haga un reporte con
#2 columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión.
#Se debe guardar el resultado en un archivo llamado reporte.txt

if [ $# -eq 1 ]; then
  cant=0
  for i in $(find / -name "*.$1"); do #busca todos los archivos con extension $1 en / (filesystem)
    user=$(ls -l $i | cut -d ' ' -f3) #para c/archivo elijo el nombre del usuario
    cant=cant+1
  done
  echo "${user}     ${cant}" >> reporte.txt
else
  echo "Es necesario 1 (un) parámetro"
fi
