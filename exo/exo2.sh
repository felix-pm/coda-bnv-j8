#!/bin/bash

echo "Indiquez un nombre de minutes :"
read nb
heures=$((nb/60))
minutes=$(($nb%60))
echo "$nb minutes c'est l'équivalent des $heures heures et $minutes minutes"