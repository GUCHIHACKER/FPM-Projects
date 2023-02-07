#!/bin/bash

function calculadora(){
    clear
    echo "            .-----.             "
    echo "           / .===. \            "
    echo "           \/ 6 6 \/            "
    echo "           ( \___/ )            "
    echo "  _____ooo__\_____/__________   "
    echo " /                           \  "
    echo "| Bienvenido a mi calculadora | "
    echo " \___________________ooo_____/  "
    echo "            |  |  |             "
    echo "            |_ | _|             "
    echo "            |  |  |             "
    echo "            |__|__|             "
    echo "            /-'Y'-\             "
    echo "           (__/ \__)            "



    echo "--------By El.Fenix--------"
    
    read -p "Primer numero: " primer_numero



    echo ""
    echo "(*)Multiplicacion (/)Division (+)Suma (-)Resta"
    echo ""
    read -p "Elije el tipo de operacion tomando de ejemplo la lista de arriba: " operacion


    read -p "Segundo numero: " segundo_numero

    clear

    solu=$(calc $primer_numero "$operacion" $segundo_numero)
    solucion=$(echo "$solu" | tr -d '[[:space:]]')

    echo "El resultado de $primer_numero $operacion $segundo_numero es $solucion"
    
    read -p "Quieres volver a utilizar la calculadora?(Y/N): " seguir
    case $seguir in
        Y)
            

    esac

    case $seguir in
        N)
            echo "--------gracias por utilizar mi calculadora:)--------"
            echo "                   By El.Fenix                       "
            chars="/-\|"
            repes=0
            while [ $repes -lt 10 ]; do
                for (( i=0; i<${#chars}; i++ )); do
                    sleep 0.5 
                    echo -en "Saliendo[${chars:$i:1}]..." "\r" 
                    repes=$((repes+1))
                done 
            done
            exit

    esac
    case $seguir in
        n)
            echo "--------gracias por utilizar mi calculadora:)--------"
            echo "                   By El.Fenix                       "
            tput civis
            chars="/-\|"
            repes=0
            while [ $repes -lt 10 ]; do
                for (( i=0; i<${#chars}; i++ )); do
                    sleep 0.5 
                    echo -en "Saliendo[${chars:$i:1}]..." "\r" 
                    repes=$((repes+1))
                done 
            done
            tput cnorm
            exit
    esac
}

clear

tput civis

chars="/-\|"
repes=5
while [ $repes -lt 10 ]; do
    for (( i=0; i<${#chars}; i++ )); do
        sleep 0.5 
        echo -en "Iniciando[${chars:$i:1}]..." "\r" 
        repes=$((repes+1))
    done 
done
tput cnorm
times=1
while [ $times -gt 0 ];
do
  calculadora
done