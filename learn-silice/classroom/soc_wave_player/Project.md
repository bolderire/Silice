# **Important**
- Rendu du projet et du materiel **en présentiel** le `TBD` 2026, hall de l'ecole (Telecom Nancy) entre **12h-13h**.
- En cas d'impossibilité majeure sur cette date contactez moi au plus vite.
- *si le matériel n'est pas rendu, le projet sera considéré non rendu aussi.*
- Email: `sylvain.lefebvre@inria.fr`

# Rendu
- La carte ULX3S devra être configurée pour démarrer sur le projet (éventuellement après reset), ligne de commande pour configurer de manière non volatile: ```openFPGALoader -f -b ulx3s BUILD_<step>/build.bit```
- La SDcard contient tous les fichiers nécessaires et est sur la ULX3S -- rendue avec la carte -- prête à être testée.
- **ATTENTION**: rendre aussi fichiers source *hardware et firmware*, lien github par email bienvenu (attention ne pas mettre fichiers audio sous copyright dans le git), au besoin zip dans email.
- **ATTENTION**: ajouter 1 page max dans un ficher `.md` decrivant le travail *mettez bien votre nom dans ce fichier*. Décrivez en particulier:
  - les fonctions bonus
  - les instructions pour compiler/tester
- **ATTENTION**: je reponds à chaque email pour confirmer bonne réception, sans réponse apres 48h, renvoyez.

# Minimum attendu:
- menu avec classement par album (e.g. un par repertoire)
- lecture / pause d'une musique
- arret de la lecture, retour dans le menu
- affichage d'une image correspondant à l'album / la musique
- effet de lumiere sur les LEDs, en hardware (par forcement synchro à la musique, bonus si le cas)

# Fonctions 'bonus' (une attendue, 2-3 pour bonne note)
- avance/retour rapide
- jingle d'accueil et/ou sons avec `sndgen`
- couleurs sur ecran
- animation pendant la musique (ecran ou LED ou les deux)
- sons dans les menus
- volume sur LEDs (lors du changement avec boutons)
- easter egg
- tout autre fonctionnalité, soyez créatifs!
