#!/bin/bash

read -p "Inserta el nombre del usuario que deseas consultar... " usuario

logs=`cat usuarios.txt | grep $usuario | wc -l`

if [ $logs -eq 0 ]
    then
    echo "$usuario no se ha logueado"
    else
    echo "$usuario se ha logueado $logs veces"
fi
