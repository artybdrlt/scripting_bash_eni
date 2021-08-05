#!/bin/bash

#===========================================================================
#	FILE: monscriptTP4.sh
#	AUTHOR: Arthur BOUDREAULT
#	DESCRIPTION: réalisation du TP4 scripting bash
#===========================================================================

## Fonctionnement : 
# J'ai ici crée une fonction qui va résoudre le casse-tête du TP4. 
# Dans un premier temps on demande un nom d'utilisateur 
# Si l'utilisateur retourne root alors interdit de se co et boucle retour case départ
# Si l'utilisateur retourne une variable vide (donc on fait entrée) alors on donne la valeur invité à la variable username
# Si l'utilisateur est une chaine de caractère comprise entre 1 et n caractères de a à z 
# Alors on envoie un message en remplacant la variable par la valeur donnée
# Si aucun de ces cas ne s'applique alors ça signifie qu'on a tapé 2 mots
# Dans ce cas on affiche un autre message et on boucle

# Pour finir, étant donné que le fait de boucler est considéré comme un message d'erreur,
# $? renvoie une valeur non égale à 1 et donc si $?=0 alors ça signifie que le script s'est bien déroulé

# On ferme le script et on l'execute 

function TP4 () {
	read  -p "Bonjour, veuillez taper un nom d'utilisateur :" username
	echo 

	if [[ "${username}" = root ]]; then
		echo "Interdit de se connecter en root, veuillez recommencer !"
		# exit 4
		TP4	
	elif [[ -z "${username}" ]]; then
		username="invité"  
		echo "vous allez être redirigé vers le compte ${username}...Veuillez patientier."
		sleep 1
		echo 
		echo -e "Bonjour ""${username}"", bienvenue sur la machine ""${NAME}""\n" 
	elif [[ ${username} = *([a-z]) || ${username} = invité ]]; then
	 	echo -e "Bonjour ""${username}"", bienvenue sur la machine ""${NAME}""\n"
 	else 
 		echo -e "Attention, ce n'est pas un nom d'utilisateur !\nVoici la syntaxe du script : var username = *([a-z])\nVeuillez recommencer !"
 		TP4
	fi

	if [[ 0 -eq $? ]]; then
		echo -e "Script déroulé avec succès !\nFin du script"
	fi
}

TP4 

