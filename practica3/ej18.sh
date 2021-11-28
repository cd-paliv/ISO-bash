#!/bin/bash

#Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en
#el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario
#finalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado
#en el sistema” y salir.

if [ $# -eq 1 ]; then
  if [ $(cat /etc/passwd | cut -d ':' -f1 | grep -w $1 | -wc -l) -eq 0 ]; then
    echo "El usuario $1 no existe"
  else
    conectadx=$(who | cut -f1 | grep -w $1)
    while [ conectadx ]; do
      sleep 10s #verifique cada 10 segundos
      conectadx=$(who | cut -f1 | grep -w $1)
    done
    echo "Usuario $1 logueado en el sistema"
  fi
fi
