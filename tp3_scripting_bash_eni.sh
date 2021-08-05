#!/bin/bash

#===========================================================================
#	FILE: monscriptTP3.sh
#	AUTHOR: Arthur BOUDREAULT
#	DESCRIPTION: réalisation du TP3 scripting bash
#===========================================================================

## [Etape 1]

#COMMANDES

echo "le chemin du fichier dans lequel est stocké l’historique des commandes saisies dans votre 
Shell courant est le suivant : /home/$USER/.bash_history" 
echo "$HISTFILE"
echo -e "\n"

echo "Pour enregistrer vos scripts Shell afin qu’ils puissent être appelés sans en 
indiquer le chemin il faut les sauvegarder ici : /usr/local/bin"

echo -e "\n\n"

## [Etape 3]
## Réalisation d'un petit script pour travailler les variables

#VARIABLES
# rep=/usr/local/bin
rep=$PWD
#echo "debug variable rep : $rep"
extension="sh"
#echo "debug variable extension : $extension"

echo -e "\n\n"

#COMMANDES

echo "     |     | |
    / \    | |
   |--o|===|-|
   |---|   |d|
  /     \  |w|
 | T     | |b|
 | U     |=| |
 | X     | | |
 |_______| |_|
  |@| |@|  | |
___________|_|_"


read -p "Etes-vous paré au lancement  : oui ou non ?" oui non trash

echo -e "3\n"
sleep 0.5
echo -e "2\n"
sleep 0.5
echo -e "1\n"
sleep 0.5

echo -e "let's goooooo !!!!!\n" 


echo -e "lancement du missile nucléaire TUX....\n"

sleep 2



echo "                          ____/ (  (    )   )  \___
                         /( (  (  )   _    ))  )   )\
                       ((     (   )(    )  )   (   )  )
                     ((/  ( _(   )   (   _) ) (  () )  )
                    ( (  ( (_)   ((    (   )  .((_ ) .  )_
                   ( (  )    (      (  )    )   ) . ) (   )
                  (  (   (  (   ) (  _  ( _) ).  ) . ) ) ( )
                  ( (  (   ) (  )   (  ))     ) _)(   )  )  )
                 ( (  ( \ ) (    (_  ( ) ( )  )   ) )  )) ( )
                  (  (   (  (   (_ ( ) ( _    )  ) (  )  )   )
                 ( (  ( (  (  )     (_  )  ) )  _)   ) _( ( )
                  ((  (   )(    (     _    )   _) _(_ (  (_ )
                   (_((__(_(__(( ( ( |  ) ) ) )_))__))_)___)
                   ((__)        \\||lll|l||///          \_))
                            (   /(/ (  )  ) )\   )
                          (    ( ( ( | | ) ) )\   )
                           (   /(| / ( )) ) ) )) )
                         (     ( ((((_(|)_)))))     )
                          (      ||\(|(|)|/||     )
                        (        |(||(||)||||        )
                          (     //|/l|||)|\\ \     )
                        (/ / //  /|//||||\\  \ \  \ _)"

echo ""

sleep 1

# Fin de l'explosion

echo -e "Votre répertoire de travail : $rep \nFichiers .sh pouvant être traités depuis $rep : "
#echo "Fichiers pouvant être traités depuis $rep : " 
# Alternative : ls $rep/*.$extension

find "$rep" -type f -name "*.$extension"


echo ""

echo "Quel fichier .sh voulez-vous traiter ? Tapez votre réponse"
read fic trash

# Alternative : read -p "Quel fichier voulez-vous traiter ?" fic 

#DEBUG echo $fic 

# variable Nombre de lignes
nblign=$(wc -l "$fic")
# variable début du fichier
#debut=`head -n 2 $fic`
debut=$(head -n2 "$fic")
# variable fin du fichier 
fin=$(tail -n2 "$fic")

echo ""

# Afficher « CARACTERISTIQUES de fic » 
echo "Caractéristiques de $fic : "
ls -ld "$fic"
# Afficher « Nombre de lignes du fichier : nblign »
echo -e "Nombre de lignes du fichier : $nblign\n"
# Afficher Début du fichier
echo -e "Début du fichier : \n $debut\n"
# Afficher fin du fichier 
echo -e "Fin du fichier : \n $fin"


unset trash

