#!/bin/bash

#===========================================================================
#	FILE: monscript.sh
#	AUTHOR: Arthur BOUDREAULT
#	DESCRIPTION: réalisation du TP2 scripting bash
#===========================================================================



echo "hello world"
echo "Bonjour, cette machine est fin prête pour scripter..."
echo "Scripts Shell présent ici : " 
find $PWD -type f -name "*.sh"

echo -e "\n"

echo "Informations relatives à l'interpréteur BASH : " 
echo "$BASH_VERSION"

echo ""

whereis bash

echo ""

echo "Mise à jour disponible ? "

apt-cache policy bash