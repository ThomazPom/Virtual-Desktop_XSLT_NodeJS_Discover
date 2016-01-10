
##Virtual Desktop :
###Application NODEJS/WEB permetant d'exploiter des OpenData
####INSTRUCTIONS
=============
Télécharger et extraire les fichiers de la Solution Virtual Desktop Release

#####Pour windows :
* 1-Installer node JS
	* LIEN->			https://nodejs.org/en/download/
* 2-Installer BaseX
	* LIEN->			http://basex.org/products/download/all-downloads/

#####Pour Linux(MacOS?)
* 1-Télécharger nodeJS et l'ajouter au PATH si nécéssaire
	* LIEN->			https://nodejs.org/en/download/
* 2-Installer baseX :
	* COMMANDE->		sudo apt-get install basex
* 3-Naviguer jusqu'au dossier app/fop-2.0 avec un terminal
* 4-Obtenir les droits d'utilisation de FOP avec la commande suivante
	* COMMANDE->			chmod u+rwx *

#####ENSUITE > Pour Tout les OS
* A-Charger la base de données etablissement_superieurs.xml avec BaseXGui
	* LIEN->			https://www.data.gouv.fr/fr/datasets/etablissements-denseignement-superieur/
* B-Naviguer jusqu'au dossier app avec un terminal
* C-Démarrer le serveur :
	* COMMANDE->		node start.js

######Node JS exécute start.js qui ouvre une session BaseX
######Il indique le port libre qui aura été choisi pour l'exécution du serveur
