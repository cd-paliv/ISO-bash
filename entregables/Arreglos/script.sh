#!/bin/bash

if [ $# -lt 1 ]; then
  exit 1
fi

arreglo=($*)

#arreglo=( $(echo ${arreglo[@]} | tr ' ' '\n') )



#---------------------------------------------
existe() {
  for i in ${arreglo[@]}; do
    if [[ $i -eq $1 ]]; then
      echo $i
      return 0
    fi
  done
  return 1
}

replace() {
  existe $1 &> /dev/null
  if [[ $? -eq 0 ]]; then
    for ((i=0;i<${#arreglo[@]};i++)); do
      if [[ ${arreglo[$i]} -eq $1 ]]; then
        arreglo[$i]=$2
        return 0
      fi
    done
  fi
}

eliminar() {
  existe $1 &> /dev/null
  if [[ $? -eq 0 ]]; then
    for ((i=0;i<${#arreglo[@]};i++)); do
      if [[ ${arreglo[$i]} -eq $1 ]]; then
        unset arreglo[$i]
        return 0
      fi
    done
  else
    return 2
  fi
}

cantidad() {
  echo ${#arreglo[@]}
}

todos() {
  echo ${arreglo[@]}
}

replace 5 9
todos
eliminar 3
eliminar 7
cantidad
