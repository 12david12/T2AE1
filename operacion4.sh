#!/bin/bash 

read -p "Introduce nombre de usuario: " usuario 

numLog=`cat usuarios.txt | grep $usuario | wc -l` 
maximo=0 
mesMaximo="" 

for j in `seq 1 $numLog`  
do  
    mes=`cat usuarios.txt | grep $usuario | head -n$j | tail -1| awk '{print $3}'` 
    contador=0  

    for i in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 
    do 
        cont=$((cont + 1)) 

        if [ $i = $mes ] 
        then 
            if [ $maximo -lt $cont ] 
            then  

                    maximo=$cont 
                    mesMaximo=$i 
            fi 
        fi 
    done    
done 

dia=`cat usuarios.txt | grep $usuario | grep $mesMaximo | awk '{print $2}'`

echo "$usuario. Su última conexión fue el día $dia de $mesMaximo."
