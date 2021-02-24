#!/bin/bash
clear
tput cup 6 50 ;echo "##### RECHERCHE  ####"
tput cup 7 50 ;echo "##### 1 Par num  ####"
tput cup 8 50 ;echo "##### 2 Par nom  ####"
tput cup 9 50 ;echo "##### 3 Retourne ####"
tput cup 10 50 ;read -p "##### choisir une option :" condt
case $condt in
1) clear
   tput cup 6 50 ;echo "#####A) Rechercher les détails de l'employé#####"
   tput cup 7 50 ;read -p "par matricule :" num3
   tput cup 10 50 ;echo "\e[1;33m $(grep $num3 nouvel_employé) \e[0m"
tput cup 12 50 ;read -p "voulez-vous retourner/quitter(oui/non) :" rtrn1
if [ "$rtrn1" = "oui" ]
then
sh recherche.sh
elif [ "$rtrn1" = "non" ]
then 
clear
exit
else
tput cup 14 50 ;echo "Valeur incorrect !"
exit
fi
;;
2) clear
   tput cup 6 50 ;echo "#####B) Rechercher les détails de l'employé#####"
   tput cup 7 50 ;read -p "par nom :" name3
rech=`grep -c $name3 nouvel_employé | wc -l`
ligne=`grep -n $name3 nouvel_employé`
if [ "$rech" -gt "0" ]
then
tput cup 9 50 ;echo "\e[1;33m matricule :`echo $ligne | cut -d " " -f1` \e[0m"
tput cup 10 50 ;echo "\e[1;33m Prénom :`echo $ligne | cut -d " " -f2` \e[0m"
tput cup 11 50 ;echo "\e[1;33m Nom :`echo $ligne | cut -d " " -f3` \e[0m"
tput cup 12 50 ;echo "\e[1;33m adresse :`echo $ligne | cut -d " " -f4` \e[0m"
tput cup 13 50 ;echo "\e[1;33m contact :`echo $ligne | cut -d " " -f5` \e[0m"
tput cup 14 50 ;echo "\e[1;33m date :`echo $ligne | cut -d " " -f6` \e[0m"
tput cup 15 50 ;echo "\e[1;33m poste :`echo $ligne | cut -d " " -f7` \e[0m"
tput cup 16 50 ;echo "\e[1;33m statut :`echo $ligne | cut -d " " -f8` \e[0m" 
tput cup 18 50 ;read -p "voulez-vous retourner/quitter(oui/non) :" rtrn2
if [ "$rtrn2" = "oui" ]
then
sh recherche.sh
elif [ "$rtrn2" = "non" ]
then 
clear
exit
else 
tput cup 20 50 ;echo "Valeur incorrect !"
exit
fi
fi
;;
3)
   sh main.sh
;;
*)
   tput cup 13 50 ;tput blink ;echo "\e[1;31m choix incorrect ! \e[0m"
sleep 1
sh recherche.sh
;;
esac
