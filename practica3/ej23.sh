#/bin/bash

<<"enunciado"
Implemente un script que recorra un arreglo compuesto por números e imprima en
pantalla sólo los números pares y que cuente sólo los números impares y los informe
en pantalla al finalizar el recorrido.
enunciado

 num=(10 3 5 7 9 3 5 4)

 impar=0
 for ((i=0;i<${#num[*]};i++)); do
   if [ $((${num[$i]} % 2)) -eq 0 ]; then
     echo "${num[$i]}"
   else
     let impar++
   fi
 done
 echo $impar
