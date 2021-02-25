#!/bin/bash
clear
tput cup 6 50 ;echo "#####B) Update Statut(Modifiez votre Statut)#####"
tput cup 7 50; echo -n "Entrer votre matricule : " 
read mat
rech=`grep -c $mat nouvel_employé`
if [ $rech -gt 0 ]
then
line=`grep -n $mat nouvel_employé`
matricule=`echo $line | cut -d " " -f1`
prenom=`echo $line | cut -d " " -f2`
name=`echo $line | cut -d " " -f3`
adress=`echo $line | cut -d " " -f4`
contact=`echo $line | cut -d " " -f5`
dates=`echo $line | cut -d " " -f6`
poste=`echo $line | cut -d " " -f7`
statut=`echo $line | cut -d " " -f8`
tput cup 10 50; echo "\e[1;33m Matricule : $matricule \e[0m" 
tput cup 11 50; echo "\e[1;33m Prénom : $prenom \e[0m"
tput cup 12 50; echo "\e[1;33m Nom : $name \e[0m"
tput cup 13 50; echo "\e[1;33m Adresse : $adress \e[0m"
tput cup 14 50; echo "\e[1;33m Contact : $contact \e[0m"
tput cup 15 50; echo "\e[1;33m Date d'adhésion : $dates \e[0m"
tput cup 16 50; echo "\e[1;33m Poste : $poste \e[0m"
tput cup 17 50; echo "\e[1;33m Statut : $statut \e[0m"
else
tput cup 9 50; tput blink ;echo "\e[1;32m matricule invalide \e[0m"
sleep 1
sh modification.sh
fi
changement()
{
tput cup 19 50 ;read -p "Que voulez-vous modififier? :" mod
case $mod in
Prénom)
 tput cup 20 50; read -p "Modifier votre Prénom :" newprenom
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$prenom/$newprenom/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Nom)
 tput cup 20 50; read -p "Modifier votre Nom :" newname
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$name/$newname/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Adresse)
 tput cup 20 50; read -p "Modifier votre Adresse :" newadress
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$adress/$newadress/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Contact)
 tput cup 20 50; read -p "Modifier votre Contact :" newcontact
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$contact/$newcontact/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Date)
 tput cup 20 50; read -p "Modifier votre Date d'adhésion :" newdate
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$dates/$newdate/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Poste)
 tput cup 20 50; read -p "Modifier votre Poste :" newposte
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$poste/$newposte/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
Statut)
 tput cup 20 50; read -p "Modifier votre Statut :" newstatut
 tput cup 21 50 ;echo -n "voulez-vous enregistrer(oui/non) :"
 read repons
if [ "$repons" = "oui" ]
 then
 sed "$ligne s/$statut/$newstatut/" "nouvel_employé" > file.tmp && mv file.tmp "nouvel_employé"
 tput cup 23 50 ;echo "\e[1;32m Modification réussie avec success 👍 \e[0m"
 sleep 1
 sh transaction.sh
 elif [ "$repons" = "non" ]
 then
 sh transaction.sh
else
tput cup 23 50 ;echo "Valeur incorrect !"
exit
fi
;;
*)
 tput cup 21 50 ;echo "\e[1;31m Valeur incorrect \e[0m"
 sleep 1
 sh modification.sh
;;
esac
}
changement

