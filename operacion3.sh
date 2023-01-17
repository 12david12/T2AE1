#!/bin/bash

read -p "Introduce mes: " mes
read -p "Introduce dia: " dia

date=$dia"/"$mes
limite=`cat usuarios.txt | grep "$fecha" | wc -l`
usuario=""

if [ $limite -eq 0 ]
    then
    echo "En $date no se ha registrado ningún usuario"
    else
    for i in `seq 1 $limite`
        do
        usu=`cat usuarios.txt| grep "$date"| head -n$i|tail -n1| awk '{print $1}' `
        usuario=$usuario" "$usu
    done
    echo "En la fecha $date se han conectado los usuarios $usuario"
fi
