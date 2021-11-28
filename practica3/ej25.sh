#!/bin/bash

<<"enunciado"
Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parámetro:
    “-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso
    contrario, un mensaje de error.No
    “-l”: Devuelve la longitud del arreglo
    “-i”: Imprime todos los elementos del arreglo en pantalla
enunciado

vector=($(cat /etc/passwd | cut -d: -f1))

if [ $# -eq 0 ]; then
  echo "Se necesitan parametros; elegir -b, -l o -i"
else
  case $1 in
    "-b")
      if [ $# -eq 2 ]; then
        if [ $2 -gt ${#vector[*]} ]; then
          echo "La posicion $2 no existe"
        else
          echo ${vector[$2]}
        fi
      else
        echo "Se necesita un numero entero despues de -b"
      fi
      ;;
    "-l")
      echo ${#vector[*]}
      ;;
    "-i")
      echo ${vector[*]}
      ;;
  esac
fi
