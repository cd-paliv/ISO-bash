#!/bin/bash

<<"enunciado"
Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4)
(la cantidad de elementos del arreglo puede variar). Implemente la función
productoria dentro de este script, cuya tarea sea multiplicar todos los números
del arreglo.
enunciado

num=(10 3 5 7 9 3 5 4)

productoria(){
  prod=1
  for ((i=0;i<${#num[*]};i++)); do
    prod=$(($prod*${num[$i]}))
  done
  echo $prod
}

productoria
