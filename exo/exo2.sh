#!/bin/bash

echo "Indiquez un nombre de minutes :"
read nb
minutes=$(($nb%60))
heures=$((($nb-$minutes)/60))
echo "$nb minutes c'est l'équivalent des $heures heures et $minutes minutes"