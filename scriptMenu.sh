#!/bin/bash
option=0

while [ $option -ne "5" ]
do
    echo "MENÚ DE OPCIONES DE USUARIO"
    echo "======================================================"
    echo "1. BUSCAR NÚMERO DE CONEXIONES POR NOMBRE DE USUARIO"
    echo "2. BUSCAR CONEXIONES POR MES"
    echo "3. BUSCAR CONEXIONES POR DIA Y MES"
    echo "4. CONSULTAR DATOS DE ÚLTIMA CONEXIÓN"
    echo "5. FINALIZAR PROGRAMA"
    echo "======================================================"
    read -p "SELECCIONE UNA OPCIÓN (1..5): " opcion

    case $option in 
    "1")
    ./operacion1.sh
    ;;
    "2")
    ./operacion2.sh
    ;;
    "3")
    ./operacion3.sh
    ;;
    "4")
    ./operacion4.sh
    ;;
    "5")
    echo "FIN DEL PROGRAMA"
    break
    ;;
    *)
    echo "ERROR. OPCIÓN INCORRECTA."
    ;;
    esac

done
