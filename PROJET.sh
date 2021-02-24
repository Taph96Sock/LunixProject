#!/bin/bash
tput clear
log="user"
passwds="passuser"
tput cup 5 50; echo "########## EMPLOYEE MANAGEMENT SYSTEM ##########"
tput cup 6 50; read -p "#####Login: " log
stty -echo
tput cup 7 50; read -p "#####Password: " passwds
stty echo
if [ "$log" = "user" -a "$passwds" = "passuser" ]
then
tput cup 10 50; echo "\e[1;32m Connection réussie..... \e[0m"
tput civis; sleep 1; tput cnorm 
sh main.sh
else
tput cup 10 50; tput blink; echo "\e[1;31m login and password incorrect ! \e[0m"
tput civis; sleep 1; tput cnorm
sh PROJET.sh
fi
