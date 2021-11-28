#!/bin/bash

#Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menú, el cual,
#al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados en
#esta práctica. Las instrucciones de cómo proceder deben mostrarse junto con el menú. El menú
#deberá iniciarse y permanecer activo hasta que se seleccione Salir.

opc = "x"
select opc in mostrar ej12 ej13 ej14 ej16 ej17 ej18 Salir
do
  case $opc in
    "mostrar")
      /home/alumno/practica-shell-script/mostrar.sh
    ;;
    "ej12")
      echo "Ingrese dos numero enteros y una operacion"
      read n1 op n2
      ./ej12.sh n1 op n2
    ;;
    "ej13")
      ./ej13.sh
    ;;
    "ej14")
      echo "Ingrese un directorio, elija opción -a o -b y una cadena"
      read dir opc str
      ./ej14.sh dir opc str
    ;;
    "ej16")
      echo "Ingrese una extensión"
      read ext
      ./ej16.sh ext
    ;;
    "ej17")
      ./ej17.sh
    ;;
    "ej18")
      echo "Ingrese un usuario"
      read us
      ./ej18.sh us
    ;;
    "Salir")
      break
    ;;
  esac
done
