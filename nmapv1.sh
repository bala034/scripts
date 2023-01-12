#!/bin/bash
clear
echo -e '\033[05;34m[+] Scanner Rede [+]\033[00;37m'
echo ""
echo "Digite o IP:"
read ip
echo ""
echo "[Metodos]"
echo "NMAP - Pegar S.O + Traceroute = 1"
echo "NMAP - Burlar Firewall + INFO = 2"
echo "NMAP - Burlar Firewall2 + INFO = 3"
echo "NMAP - Scanning IPV6 = 4"
echo "NMAP - Scan VULN Hack = 5"
echo "NMAP - Scan VULN DoS = 6"
echo ""
echo "Digite o metodo desejado:"
read metodo
clear
if [ "$metodo" = "1" ]
then
echo ""
echo -e '\033[01;32m[1] Iniciando Scan\033[00;37m'
echo ""
nmap -O --traceroute -vv $ip
fi

if [ "$metodo" = "2" ]
then
echo ""
echo -e '\033[01;32m[2] Iniciando Scan\033'
echo ""
nmap -sN -Pn -vv $ip
fi

if [ "$metodo" = "3" ]
then
echo ""
echo -e '\033[01;32m[3] Iniciando Scan\033'
echo ""
nmap -T4 -A -Pn -vv $ip
fi

if [ "$metodo" = "4" ]
then
echo ""
echo -e '\033[01;32m[4] Iniciando Scan\033'
echo ""
nmap -6 -Pn $ip
fi

if [ "$metodo" = "5" ]
then
echo ""
echo -e '\033[01;32m[5] Iniciando Scan\033'
echo ""
nmap --script vuln -vv $ip
fi

if [ "$metodo" = "6" ]
then
echo ""
echo -e '\033[01;32m[6] Iniciando Scan\033'
echo ""
nmap --script dos -Pn $ip
fi
echo ""
echo -e '\033[01;37m              Viva o \033[04;32mLinux\033[00;37m!!!'
