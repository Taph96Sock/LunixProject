#!/bin/bash
tput clear
tput cup 6 50 ;echo "##### MAIN MENU      ######"
tput cup 7 50 ;echo "##### 1 Transaction  ######"
tput cup 8 50 ;echo "##### 2 Recherche    ######"
tput cup 9 50 ;echo "##### 3 Rapport      ######"
tput cup 10 50 ;echo "##### 4 Sortie       ######"
tput cup 11 50 ;echo -n "##### choisir une option :"
read option
clear
case $option in
1) sh transaction.sh;;
2) sh recherche.sh;;
3) sh rapport.sh;;
4) exit;;
*) tput cup 6 50;tput blink;echo "\e[1;31m choix incorrect ! \e[0m"
   sleep 1
   sh main.sh;;
esac
