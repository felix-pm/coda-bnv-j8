#!/bin/bash

echo "Quel est le nom du projet (sans espace) ?"
read name_project
mkdir $name_project
cd $name_project
touch main.c
echo "Quel est le nom de vos dossiers (.c et .h)"
read name_file
touch $name_file.c $name_file.h

echo "#include <stdlib.h>
#include <stdio.h>
#include \"$name_file.h\"

int main()
{
    exit(0);
}" >> main.c


echo "Fichier main.c crée"



echo "#include <stdlib.h>
#include <stdio.h>" >> $name_file.c


echo "Fichier $name_file.c crée"



echo "#include <stdlib.h>
#include <stdio.h>" >> $name_file.h


echo "Fichier $name_file.h crée"



echo "Fini"
