#!/bin/bash

echo "********************************************************"
echo "** Script permettant de manipuler les logs du serveur **"
echo "**                  Version Docker                    **"
echo "********************************************************"

#adding: for docker
cd /home/temp
#end adding

echo ""
echo "1- Nombre de ligne du fichier $1"
wc -l $1
echo ""
echo "2- Nombre de clients connectés"
cut -d ' ' -f 1 $1 | sort -u | wc -l
echo ""
echo "3- Nombre de clients ayant accédé avec succès"
grep -E ' 2[0-9]{2} ' $1 | cut -d ' ' -f 1 | sort -u | wc -l
echo ""
echo "4- Nombre de clients ayant accédé avec message d'erreur"
grep -E ' (5|4)[0-9]{2} ' $1 | cut -d ' ' -f 1 | sort -u | wc -l
echo ""
echo "5- Nombre de fois que le hacker s'est connecté au serveur"
cut -d ' ' -f 1 $1 | grep '^127.0.0.1' | wc -l
echo ""
echo "6- Les 03 URLs les plus invoqué par le hacker. Format de la réponse: (nbOccurences URL)."
grep '^127.0.0.1 ' $1 | cut -d ' ' -f 11 | grep '^"https' | sort | uniq -c | sort -hr | head -n 3
echo ""
echo "7- Nombre de fois que le hacker s'est connecté avec un navigateur 'safari'"
grep -iw 'safari' $1 | grep '^127.0.0.1 ' | wc -l
echo ""
echo "8- Les systèmes et les versions des OS du hacker. Format de la réponse (nbOccurences SE)."
grep '^127.0.0.1 ' $1 | grep ' (.*) ' | cut -d '(' -f 2 | cut -d ')' -f 1 | sort | uniq -c | sort -hr
echo ""
echo "9- Nombre d'attaques d'origine sénégalaise subies par le serveur"
grep -E '^41.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3} ' $1 | wc -l
