#!/bin/bash

#(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard
#e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.
<<"12a"
echo "Ingrese 2 numeros enteros"
read nro1 nro2
echo "Multiplicación: $(($nro1 * $nro2))"
echo "Suma: $(($nro1 + $nro2))"
echo "Resta: $(($nro1 - $nro2))"
if [ $nro1 -gt $nro2 ]; then  #-gt dice si el primero es mayor al segundo
  echo "El mayor es $nro1"
else
  echo "El mayor es $nro2"
fi
12a

#(b) Modificar el script creado en el inciso anterior para que los números sean recibidos
#como parámetros. El script debe controlar que los dos parámetros sean enviados.
<<"12b"
if [ $# -eq 2 ]; then
  echo "Multiplicación: $(($1 * $2))"
  echo "Suma: $(($1 + $2))"
  echo "Resta: $(($1 - $2))"
  if [ $1 -gt $2 ]; then  #-gt dice si el primero es mayor al segundo
    echo "El mayor es $1"
  else
    echo "El mayor es $2"
  fi
fi
12b

#(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %.
#Esta calculadora debe funcionar
#recibiendo la operación y los números como parámetros
if [ $# -eq 3 ]; then
  echo "La $2 es: $(($1 $2 $3))"
fi
