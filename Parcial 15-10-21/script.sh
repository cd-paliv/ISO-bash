#!/bin/bash

inst=()
desinst=()

for i in $( cat history.log | grep "Commandline: apt remove" | cut -d" " -f4 ); do
  desinst[${#desinst[@]}]=$i
done

for i in $( cat history.log | grep "Commandline: get install" | cut -d" " -f4 ); do
  inst[${#inst[@]}]=$i
done
for i in $( cat history.log | grep "Commandline: apt-get install" | cut -d" " -f4 ); do
  inst[${#inst[@]}]=$i
done

#-----------------------------------
echo "Paquetes instalados(total ${#inst[@]}):"
for i in ${inst[*]}; do
    echo $i
done

echo " "

echo "Paquetes desinstalados(total ${#desinst[@]}):"
for i in ${desinst[*]}; do
    echo $i
done
