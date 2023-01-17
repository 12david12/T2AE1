#!/bin/bash

read -p "Introduce mes: " mes
limite=`cat usuarios.txt | grep $mes | wc -l`
dia=""

if [ $lim -eq 0 ]
    then
    echo "En $mes no se han registrado logueos"
    else
    for i in `seq 1 $limite`
        do
        numero=`cat usuarios.txt| grep $mes| head -n$i|tail -n1| awk '{print $2}' `
        dia=$dia" "$num
    done
    echo "En $mes han habido logins los días $dia"
fi
