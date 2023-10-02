#!/bin/bash

RED="\e[31m"
RESET="\e[0m"

function antes_salir {
    rm hosts.txt
}

function banner {
    clear
    echo ""
    echo ".##....##.########.########..........######...######.....###....##....##"
    echo ".###...##.##..........##............##....##.##....##...##.##...###...##"
    echo ".####..##.##..........##............##.......##........##...##..####..##"
    echo ".##.##.##.######......##....#######..######..##.......##.....##.##.##.##"
    echo ".##..####.##..........##..................##.##.......#########.##..####"
    echo ".##...###.##..........##............##....##.##....##.##.....##.##...###"
    echo ".##....##.########....##.............######...######..##.....##.##....##"
    echo "-------------------------------By-GUCHI---------------------------------"
}
banner

function scan {
    sudo arp-scan -l | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\s+[0-9a-fA-F:]+\s+\S+' > hosts.txt && clear
    banner
    cat hosts.txt
    dis=$(wc -l hosts.txt)
    dis=$(echo $dis | sed "s/\bhosts.txt\b//g")
    echo -e 'Numero de dspositivos conectados a la red' ${RED}$dis${RESET}
    rm hosts.txt
}

while true; do
    scan
    echo "Presione Ctrl + C para parar el escaner"
done