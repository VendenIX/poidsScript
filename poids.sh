#!/bin/bash

# Affiche la taille de chaque fichier/dossier dans le répertoire courant et les trie
du -hs {,.[!.],..?}* | sort -h 2>/dev/null

# Calcule et affiche la taille totale du répertoire courant
echo "Total= $(du -sh . | cut -f1)"

# Calcul l'espace restant dispobile
echo "Espace restant= $(df -h | grep '/dev/sda5' | awk '{print $4}')"
 
