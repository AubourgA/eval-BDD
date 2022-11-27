# eval-BDD

- ouvrir un utilitaire pour faire des requete SQL (ex SQL workbench ou phpMyAdmin)

# 1ere methode pour structurer la BDD et l'alimenter (manuel)

- copier/coller les lignes de requetes SQL du fichier CREATE_BDD.sql (structure de la BDD)
- copier/coller les lignes de requetes SQL du fichier INSERT_DATAS.sql (pour alimenter la BDD)

# 2em méthode (utilitaire de sauvegarde/restauration)

- récuperer via git le fichier dump.sql
- ouvrir le terminal et se placer dans le dossier ou se trouve dump.sql
- taper la ligne de commande via un terminal : 

mysql -u < identifiant > -p < nom de la table > < dump.sql

ex : mysql -u root -p gestioncinema < dump.sql

Cela permet de restaurer la BDD

# Sauvegarder la BDD dans un fichier

taper la ligne de commande :

mysqldump -u < identifiant > -p < nom bdd > > nomdefichier.sql

ex: msqldump -u root -p gestioncinema > dump.sql

L'ensemble de la bdd sera sauvegardée dans le fichier dump.sql


