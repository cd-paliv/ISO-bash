Se tiene un archivo separado por comas con los registros de ventas de una companía (100_Sales_Records.csv):

En este link se puede ver de manera mas gráfica el contenido del archivo.

Su script recibirá 2 parámetros que se corresponde a un país (segunda columna) y un orden de prioridad (quinta columna) y deberá realizar dos tareas:

**Primero deberá formar un array que contenga todos los items de ese país para esa prioridad.**


¿Como se forma el array de items por prioridad?.
Tiene que llenar un Array con todos los valores correspondientes al tipo de ítem (tercera columna) correspondiente al país  ingresado y a la prioridad ingresada.

Ademas deberá calcular el total de unidades vendidas (columna 9) para el país y prioridad ingresada.

**Segundo deberá imprimir los elementos del vector que formo en la tarea anterior (imprimir en pantalla los elementos del vector) y el total de unidades vendidas.**


Debe validar la cantidad de parámetros recibidos, en caso de recibir parámetros de mas o de menos deberá imprimir exactamente: `INVALID PARAMETERS` y devolver un código de salida apropiado.

Por ejemplo si recibo:

`Australia H`

Primera tarea: debo llenar el vector con los siguientes elementos
```
Cereal
Beverages
10.071
```
Explicación:

Para el pais Australia (en la 2da columna) y la prioridad H (en la quinta columna) tengo 2 filas cuyos Items de producto son: "Cereal" y "Beverages".

La suma de unidades de "Cereal" (682) y "Beverages" (9389) vendidas da como resultado: 10.071

Segunda tarea: Imprimir en pantalla los siguientes elementos
```
Cereal
Beverages
10.071
```
Explicación: Debo imprimir los elementos del vector que se llenaron en la primer tarea. Atención: debe imprimirlos desde el vector luego de agregarlos, no a medida que los agrega.

Si recibo:

`Mexico`

Debo Imprimir:

`INVALID PARAMETERS`

Explicación:

Falta 1 parametro

Si recibo:

`Mexico L H`

Debo Imprimir:

`INVALID PARAMETERS`

Explicación:

Sobra 1 parametro


_Si recibo valores de país y prioridad que no existen en el archivo, no debo imprimir nada._

