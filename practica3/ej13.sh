#!/bin/bash

#(a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus
#cuadrados.
#<<"13a"
for ((i=1;i<=100;i++)); do
  echo "Número: $i"
  echo "Cuadrado: $(($i * $i))"
done
#13a

<<"ej13b"
#(b) Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta.
#Según la opción elegida se le debe mostrar:
 #Listar: lista el contenido del directorio actual.
 #DondeEstoy: muestra el directorio donde me encuentro ubicado.
 #QuienEsta: muestra los usuarios conectados al sistema.
opc = "x"
select opc in Listar DondeEstoy QuienEsta
do
  case $opc in
    "Listar")
      ls -a
    break
    ;;
    "DondeEstoy")
      pwd
    break
    ;;
    "QuienEsta")
      who
    break
    ;;
  esac
done
ej13b

<<"ej13c"
#(c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el
#mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En
#caso de que no exista el archivo/directorio cree un directorio con el nombre recibido
#como parámetro.
if [ -e $1 ]; then
  if [ -d $1 ]; then
    echo "$1 es un directorio"
  else
    echo "$1 es un archivo"
  fi
else
  mkdir $1
fi
ej13c
