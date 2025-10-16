#!/bin/bash

if [ $1 -ge 65 ];
then
echo "Vous êtes sénior"
elif [ $1 -ge 18 ];
then
echo "Vous êtes adulte"
else
echo "Vous êtes un enfant"
fi