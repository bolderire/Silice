# Lecteur audio sur ULX3S

Ce projet est un lecteur de musique embarque pour carte ULX3S avec ecran OLED 128x128 et carte SD. Il propose une lecture audio simple, une interface claire a l’ecran et un controle direct via les boutons de la carte. L’objectif est d’avoir un player complet, rapide a utiliser et facilement extensible.

## Fonctionnalites clees (8 points)
↑ Lecture de musiques PCM 8 kHz mono depuis la carte SD.
↑ Menu de selection des pistes avec navigation par boutons.
↓ Affichage d’une image associee a chaque piste depuis /img.
↓ Support des images couleur.
← Interface en lecture avec titre, barre de progression et controles.
→ Controle du volume avec jauge sur 8 LED.
← Play/pause, piste precedente/suivante et avance/retour par maintien.
→ Easter egg declenche par une sequence secrete de boutons.

## Organisation des fichiers
- Firmware principal: `firmware/step_Project.c`
- Design materiel: `final.si`
- Outil d’encodage audio: `encode_music.sh`

## Utilisation rapide
- Placer les pistes dans `/music` sur la SD
- Placer les images associees dans `/img` avec le meme nom
- Compiler et programmer: `make final FIRMWARE=step_Project`

## Utilisation des boutons
Menu de selection:
- B3: monter
- B4: descendre
- B1: lancer la piste selectionnee

Lecture:
- B1: retour au menu
- B2: play/pause
- B5: retour au début (ou piste precedente si appuye pendant les 2 premiers secondes de la piste actuelle)
- B6: piste suivante
- B3/B4: volume +/-
- Maintien B5/B6: avance/retour rapide
