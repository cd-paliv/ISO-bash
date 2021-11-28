#!/bin/bash

#haga un script que renombre solo archivos de un directorio pasado
#como parametro agregandole una CADENA, contemplando las opciones:

#“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
#archivo

#“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre
#del archivo

if [ $# -eq 3 ]; then
  if [ -e $1 ]; then #si existe el directorio
    case $2 in
      "-a")
        for i in $(ls $1); do #guarda en i cada archivo del directorio $1
          mv $1/$i $1/$i$3 #renombra el archivo $i en el directorio ingresado como $iCADENA
        done
      ;;
      "-b")
        for i in $(ls $1); do
          mv $1/$i $1/$3$i #renombra el archivo $i en dir $1 como CADENA$i
        done
      ;;
    esac
    fi
  fi
fi
