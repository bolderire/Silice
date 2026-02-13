# Lecteur audio sur ULX3S

Ce projet est un lecteur de musique embarque pour carte ULX3S avec un ecran OLED 128x128 et une carte SD. L’objectif est de proposer une interface simple et lisible pour lire des pistes audio et afficher une image associee, tout en gardant un controle materiel direct via les boutons de la carte.

L’architecture combine un SoC RISC-V et un firmware C. La lecture audio se fait en flux depuis la SD, pendant que l’interface affiche le titre, la progression et les controles. Le projet a evolue pas a pas pour ajouter les fonctionnalites clefs et une interface plus agréable.

## Fonctionnalites clees
↑ Lecture de musiques PCM 8 kHz mono depuis la carte SD.
↑ Menu de selection des pistes avec navigation par boutons.
↓ Affichage d’une image associee a chaque piste depuis /img.
↓ Support des images couleur.
← Interface en lecture avec titre, barre de progression et controles.
→ Controle du volume avec jauge sur 8 LED.
← Play/pause, piste precedente/suivante et avance/retour par maintien.
→ Easter egg declenche par une sequence secrete de boutons depuis le menu de séleciton.

## Organisation des fichiers
- Firmware: `firmware/step_Project.c`
- Design materiel: `final.si`

## Utilisation rapide
- Placer les pistes dans `/music` sur la SD
- Placer les images associees dans `/img` avec le meme nom
- Compiler et programmer: `make final FIRMWARE=step_Project`
