#!/bin/bash

echo "Ingrese un nombre de usuario"
read nomUsuario


#Chequeo
if ! [ "$nomUsuario" ]; then #chequeo si la var está vacía
  exit 1
fi

if [[ $nomUsuario = "Enter" ]]; then #chequeo si el usuario ingresó "Enter"
  exit 2
fi


#Get
arregloIP=()
arregloHora=()

for i in $(cat ssh.log | grep "Failed password for $nomUsuario" | cut -d' ' -f3); do
  arregloHora[${#arregloHora[@]}]=$i #guardo las horas
done

for i in $(cat ssh.log | grep "Failed password for $nomUsuario" | cut -d' ' -f11); do
  arregloIP[${#arregloIP[@]}]=$i #guardo las IP
done


#Print
if [ ${#arregloIP[@]} -ne 0 ]; then #si encontré acceso inválidos
  
  for ((i=0;i<${#arregloIP[@]};i++));do
    echo ${arregloIP[$i]} ${arregloHora[$i]}
  done
  echo "Total de accesos inválidos: ${#arregloIP[@]}"
  
else
  echo "No se encontraron accesos por clave inválida" #si no encontré ninguno
fi

exit 0