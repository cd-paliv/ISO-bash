#!/bin/bash

<<"enunciado"
Realice un script que implemente a través de la utilización de funciones las
operaciones básicas sobre arreglos:
    -inicializar: Crea un arreglo llamado array vacío
    -agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
    -eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en
    la posición recibida como parámetro. Debe validar que se reciba una posición válida
    -longitud: Imprime la longitud del arreglo en pantalla
    -imprimir: Imprime todos los elementos del arreglo en pantalla
    -inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
    <parametro1> y en todas las posiciones asigna el valor <parametro2>
enunciado

inicializar(){
  arreglo=()
}

agregar_elem(){
  arreglo[${#arreglo[*]}]=$1
}

eliminar_elem(){
  if [[ $1 -ge 0  && $1 -le ${#arreglo[*]} ]]; then
    unset arreglo[$1]
  fi
}

longitud(){
  echo ${#arreglo[*]}
}

imprimir(){
  echo ${arreglo[@]}
}

inicializar_Con_Valores(){
  inicializar
  for ((i=0;i<$1;i++)); do
    arreglo[$i]=$2
  done
}


inicializar
agregar_elem 57
agregar_elem 28
agregar_elem 89
longitud
eliminar_elem 1
longitud
imprimir
echo "------------------------------------"
inicializar_Con_Valores 5 22
imprimir
