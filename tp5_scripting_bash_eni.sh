#!/bin/bash

#=============================================================================
#	FILE: monscriptTP5.sh
#	AUTHOR: Arthur BOUDREAULT
#	DESCRIPTION: réalisation du TP5 scripting bash avec case et boucles WHILE
#=============================================================================

banner_intro="GESTION DE L'UTILISATEUR : "
banner_line="--------------------------" 
banner_options="C - Créer le compte utilisateur avec mot de passe
M - Modifier le mot de passe de l'utilisateur 
S - Supprimer le compte utilisateur 
V - Vérifier si le compte utilisateur existe 

Q - quitter "

clear

read -p "Saisir l'identifiant utilisateur souhaité (en minuscules) : " username trash
unset trash

while [[ -z $username ]]; do
 	read -p "veuillez saisir un nom d'utilisateur : " username trash
done 
unset trash

echo
while true ; do
	sleep 2
	clear

	echo -e "$banner_intro""$username"
	echo -e "$banner_line"
	echo "$banner_options"
	echo
	read -p "Votre choix : " choice trash
	unset trash

	case $choice in
		C|c)
			echo "user en cours de création : $username "
			useradd "$username" -s /usr/bin/bash && passwd "$username"
			;;
		M|m)
			echo "Vous êtes sur le point de modifier le mot de passe de l'utilisateur "$username""
			read -p "Voulez-vous continuer ? (oui-non) " confirmation

			if [[ "$confirmation" = *(oui|OUI|Oui) ]]; then
			 	passwd "$username"
		 	else 
		 		echo "Fin du script"
		 		exit 1
			fi 
			;;
		S|s)
			echo "Vous êtes sur le point de supprimer le compte utilisateur suivant : "$username""
			read -p "Voulez-vous continuer ? (oui-non) " confirmation

			if [[ "$confirmation" = *(oui|OUI|Oui) ]]; then
				 	userdel "$username"
		 	else 
			 		echo "Fin du script"
		 			exit 1
			fi 
			;;
		V|v)
			echo "Vérification de l'existence du compte utilisateur..."
			if id "$username" &>/dev/null; then
	    		echo "l'utilisateur a été trouvé"
			else
	    		echo "l'utilisateur n'a pas été trouvé"
			fi
			;;
		Q|q)
			echo "Merci pour votre visite et à bientôt"
			sleep 2
			clear
			exit
			;;
		*)
			echo "erreur de saisir, veuillez relancer le script"
			exit 10
	esac
done
