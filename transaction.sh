#!/bin/bash
clear
dat=$(date +"%D")
stt1="valide"
tput cup 6 50 ;echo "##### TRANSACTION #####"
tput cup 7 50 ;echo "##### 1 Insert    #####"
tput cup 8 50 ;echo "##### 2 Update    #####"
tput cup 9 50 ;echo "##### 3 Return    #####"
tput cup 10 50 ;read -p "##### choisir une option :" choix
mat=`wc -l nounel_employé | cut -d " " -f1`
if [ $mat = 0 ]
then 
mat=1000
else
mat=`tail -1 nouvel_employé | cut -d " " -f1`
mat=`expr $mat + 1`
fi
case $choix in
1)
clear
tput cup 6 50 ;echo "#####A) Joindre(nouvel employé)#####"
tput cup 7 50 ;echo -n "votre matricule est : $mat"
tput cup 8 50 ;echo -n "entrez votre Prénom et Nom :"
read name1
tput cup 9 50 ;echo -n "entrez votre adresse :"
read adress1
tput cup 10 50 ;echo -n "entrez votre contact :"
read contact1
tput cup 11 50 ;echo -n "la date d'adhésion :"
tput cup 12 50 ;(date +"%D")
tput cup 13 50 ;echo -n "entrez votre poste :"
read post1
tput cup 14 50 ;echo -n "entrez votre statut : $stt1"
tput cup 15 50 ;echo -n "voulez-vous enregistrer(yes/no) :"
read reponse
if [ "$reponse" = "yes" ]
then
tput cup 18 50 ;echo "\e[1;32m Enregistrement réussie avec success 👍 \e[0m"
echo "$mat $name1 $adress1 $contact1 $dat $post1 $stt1" >> nouvel_employé
sleep 1
sh transaction.sh
elif [ "$reponse" = "no" ]
then
sh transaction.sh
else
tput cup 17 50 ;echo "Valeur incorrect !"
exit
fi
;;
2) sh modification.sh
;;
3) sh main.sh ;;
*) tput cup 13 50; tput blink; echo "\e[1;31m choix incorrect ! \e[0m"
   sleep 1
   sh transaction.sh ;;
esac
