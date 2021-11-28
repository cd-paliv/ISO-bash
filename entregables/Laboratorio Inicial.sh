#!/bin/bash

<<"ej"
Escribir un script de Bash que reciba dos parámetros y haga lo siguiente:

Si el parámetro es 1, debe imprimir
A
B

Si el parámetro es 2, debe imprimir
C
D

Si el parámetro recibido no es ni 1 ni 2 debe imprimir el siguiente mensaje en pantalla:

"El único parámetro de entrada debe ser 1 o 2".
ej

if [ $# -eq 1 ]; then
  if [ $1 -eq 1 ]; then
    echo -e "A \nB"
  elif [ $1 -eq 2 ]; then
    echo -e "C \nD"
  else
    echo "El único parámetro de entrada debe ser 1 o 2"
  fi
fi
