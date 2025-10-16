#!/bin/bash

echo "Quel est le nom du projet (sans espace) ?"
read name_project
mkdir $name_project
cd $name_project
touch main.c
echo "Quel est le nom de vos dossiers (.c et .h)"
read name_file
touch $name_file.c $name_file.h Makefile

#fichier main.c
echo "#include <stdlib.h>
#include <stdio.h>
#include \"$name_file.h\"

int main()
{


    exit(0);
}" >> main.c

#fichier.c
echo "#include <stdlib.h>
#include <stdio.h>" >> $name_file.c

#fichier.h
echo "#include <stdlib.h>
#include <stdio.h>" >> $name_file.h


#fichier Makefile
echo "Quel est le nom de l'éxécutable ?"
read name_executable
echo "# Makefile

NAME = 	$name_executable

SRCS = 	main.c \\
		$name_file.c
		

all :	\$(NAME)

\$(NAME):	\$(SRCS)
	\gcc \$(SRCS) -o \$(NAME)

fclean:
	\rm -f \$(NAME)

re: fclean all"  >> Makefile



 