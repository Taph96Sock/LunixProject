#!/bin/bash
clear
tput cup 6 50 ;echo "##### RAPPORT     ###"
tput cup 7 50 ;echo "##### 1 Par nom   ###"
tput cup 8 50 ;echo "##### 2 Par poste ###"
tput cup 9 50 ;echo "##### 3 Retourne  ###"
tput cup 10 50 ;read -p "##### choisir une option :" verif
case $verif in
1) clear
tput bold
sleep 0.10
tput cup 3 0;echo "|-----------------------------------------------------------------------------------------------------------------|"
sleep 0.10
tput cup 4 0;echo "|			      AFFICHER LA LISTE DES EMPLOYES VALIDES PAR NOM                                      |"
sleep 0.10
tput cup 5 0;echo "|-----------------------------------------------------------------------------------------------------------------|"
sleep 0.10
tput cup 6 0;echo "|  MATRICULE |  PRENOM   |     NOM    |   ADRESSE    |   CONTACT   | DATE D'ADHESION |   POSTE          |STATUT   |"
sleep 0.10
tput cup 7 0;echo "|_______________________________________________________________________________________________________|_________|"
sort -t " " +2 -3 -o new_nouvel_employé nouvel_employé
sleep 0.20
l=8
while read line;
do
sleep 0.20
tput cup $l;    echo "| `echo $line | cut -d " " -f1`"
sleep 0.20
tput cup $l 13; echo  "| `echo $line | cut -d " " -f2`"
sleep 0.20
tput cup $l 25; echo "\e[1;32m | `echo $line | cut -d " " -f3` \e[0m"
sleep 0.20
tput cup $l 38; echo "| `echo $line | cut -d " " -f4`"
sleep 0.20
tput cup $l 53; echo "| `echo $line | cut -d " " -f5`"
sleep 0.20
tput cup $l 67; echo "| `echo $line | cut -d " " -f6`"
sleep 0.20
tput cup $l 85; echo "| `echo $line | cut -d " " -f7`"
sleep 0.20
tput cup $l 104; echo "| `echo $line | cut -d " " -f8`"
sleep 0.20
tput cup $l 114; echo "|"
l=`expr $l + 1`
done < new_nouvel_employé
sleep 0.20
echo "|_________________________________________________________________________________________________________________|"
echo "rapport des employés valides par nom"
read -p "voulez-vous retourner/quitter(oui/non) :" rtr
if [ "$rtr" = "oui" ]
then
sh rapport.sh
elif [ "$rtr" = "non" ]
then 
clear
exit
else 
echo "Valeur incorrect !"
exit
fi
;;
2) clear
tput bold
sleep 0.10
tput cup 3 0;echo "|-----------------------------------------------------------------------------------------------------------------|"
sleep 0.10
tput cup 4 0;echo "|			      AFFICHER LA LISTE DES EMPLOYES VALIDES PAR POSTE                                    |"
sleep 0.10
tput cup 5 0;echo "|-----------------------------------------------------------------------------------------------------------------|"
sleep 0.10
tput cup 6 0;echo "|  MATRICULE |  PRENOM   |     NOM    |   ADRESSE    |   CONTACT   | DATE D'ADHESION |   POSTE          |STATUT   |"
sleep 0.10
tput cup 7 0;echo "|_______________________________________________________________________________________________________|_________|"
sort -t " " -k7 -o new_nouvel_employé nouvel_employé
sleep 0.20
l=8
while read line;
do
sleep 0.20
tput cup $l;    echo "| `echo $line | cut -d " " -f1`"
sleep 0.20
tput cup $l 13; echo  "| `echo $line | cut -d " " -f2`"
sleep 0.20
tput cup $l 25; echo "| `echo $line | cut -d " " -f3`"
sleep 0.20
tput cup $l 38; echo "| `echo $line | cut -d " " -f4`"
sleep 0.20
tput cup $l 53; echo "| `echo $line | cut -d " " -f5`"
sleep 0.20
tput cup $l 67; echo "| `echo $line | cut -d " " -f6`"
sleep 0.20
tput cup $l 85; echo "\e[1;32m | `echo $line | cut -d " " -f7` \e[0m"
sleep 0.20
tput cup $l 104; echo "| `echo $line | cut -d " " -f8`"
sleep 0.20
tput cup $l 114; echo "|"
l=`expr $l + 1`
done < new_nouvel_employé
sleep 0.20
echo "|_________________________________________________________________________________________________________________|"
echo "rapport des employés par poste"
read -p "voulez-vous retourner/quitter(oui/non) :" rtrn
if [ "$rtrn" = "oui" ]
then
sh rapport.sh
elif [ "$rtrn" = "non" ]
then 
clear
exit
else
echo "Valeur incorrect !"
exit
fi
;;
3)
sh main.sh
;;
*)
tput cup 13 50; tput blink; echo "\e[1;31m choix incorrect ! \e[0m"
sleep 1
sh rapport.sh
;;
esac
