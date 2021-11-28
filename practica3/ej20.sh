#!/bin/bash

<<"ej20"
Realice un script que simule el comportamiento de una estructura de PILA e implemente
las siguientes funciones aplicables sobre una estructura global definida en el script:
  push: Recibe un parámetro y lo agrega en la pila
  pop: Saca un elemento de la pila
  length: Devuelve la longitud de la pila
  print: Imprime todos elementos de la pila.
ej20

pila=()
pos=0

push(){
  pila[$pos]=$1 #pila+=$1
  let pos++
}

pop(){
  unset pila[$((${#pila[*]}-1))]
}

length(){
  echo ${#pila[*]}
}

print(){
  echo ${pila[@]}
}

push 1
push 2
push 3
push 4
push 5
push 6
push 7
push 8
push 9
push 10
pop
pop
pop
length
print
