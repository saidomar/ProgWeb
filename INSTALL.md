
						::: PRE REQUIS POUR INSTALLATION :::

	-	Machine debian avec acc�s internet pour l'installation des paquets
	-	Adresse IP fixe pour le serveur	
	

					::: PROCEDURE D'INSTALLATION :::

	-	T�l�charger via une connexion SCP/FTP l'archive ProgWeb.tar.gz dans le serveur
	-	Se connecter au serveur en tant que superutilisateur
	-	Cr�er un r�pertoire via la commande "mkdir /tmp/archive_web"
	-	Mettre l'archive dan un dossier dont le chemin est /tmp/archive_web
	-	Se d�placer dans le r�pertoire via la commande "cd /tmp/archive_web"
	-	Installer le paquet unzip via la commande "apt-get install unzip"
	-	Extraire l'archive via la commande "unzip ProgWeb.zip"
	-	Passer le fichier d'installation en ex�cutable via la commande "chmod +x INSTALL.sh"
	-	Ex�cuter le script d'installation via la commande "./INSTALL.sh"
	
					::: PARAMETRE D'INSTALLATION :::
					
	-	Mot de passe MySQL : toor
	
					::::::::::::::::::::::::::::::::
					
	-	adresse de l'application: http://@ipServer:8080/ProgWeb/