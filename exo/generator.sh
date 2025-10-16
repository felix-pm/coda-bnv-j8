#!/bin/bash

echo "Quel est le nom du projet (sans espace) ?"
read name_project
mkdir $name_project
cd $name_project
touch main.c
echo "Quel est le nom de vos dossiers (.c et .h)"
read name_file
touch $name_file.c $name_file.h
cat <<EOF > main.c
#include <stdlib.h>
#include <stdio.h>

int main()
{
    exit(0);
}
EOF
echo "Fichier main.c crée"



cat <<EOF > $name_file.c
#include <stdlib.h>
#include <stdio.h>

EOF
echo "Fichier $name_file.c crée"



cat <<EOF > $name_file.h
#include <stdlib.h>
#include <stdio.h>

EOF
echo "Fichier $name_file.h crée"



echo "Fini"
