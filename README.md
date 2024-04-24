# Projet Démo de Formation en Cobol

## Préambule : Installation des outils

>    ###  1. WSL
>
>    #### a) Télécharger une image Linux (Debian Ubuntu...)
>    La liste des distributions linux disponibles est ici : 
>    https://learn.microsoft.com/fr-fr/windows/wsl/install-manual#downloading-distributions
>    idéalement, un des trois premier liens fera l'affaire.
>
>    *Le plus simple est de passer par un wifi hors solutec + VNP*
>
>
>
>    #### b) Exécuter le fichier .APPXBUNDLE 
>   Ouvrir un terminal en mode admin        
>   Se déplacer jusqu'au répertoire ou se trouve le fichier téléchargé
>   lancer l'installation de l'image linux
>   Ex : 
>   >`C:\Users\SolutecUser\Downloads> Ubuntu2204-221101.AppxBundle`     
>
>
>    #### c) Erreurs
>    Si des erreurs notamment sur le manque de ressources système apparraissent 
>    > "ressources systeme insuffisantes pour terminer le service demandé"
>
>    télécharger puis éxécuter le [réparateur des versions de WSL](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

>    ### 2. Compilateur pour Cobol
>    Après avoir installé et lancé le WSL, et fait les mises à jours;
>    installer le package GnuCobol
>    `$ sudo apt install gnucobol`

>    ### 3. VSCode et extensions
>    Récuperer VSCode pour Windows [ici](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user)
>
>    (facultatif) installer les extensions:
>    - WSL
>    - Micro Focus COBOL
>    - COBOL Themes

>   ### 4. Ressources globales complètes
>   - [Documentation semi exhaustive et parfaite pour commencer](https://gnucobol.sourceforge.io/guides/OpenCOBOL%20Programmers%20Guide.pdf). Le document est assez vieux, mais permet de démarrer de manière légère, et est toujours valide.
>   - [Cours powerpoint à destination des débutants](https://freecomputerbooks.com/books/COBOL_Programming_Fundamental.pdf)
>   - [Doc en anglais ](https://sourceforge.net/p/gnucobol/code/HEAD/tree/external-doc/guide/PDFs/gnucobpg-letter.pdf?format=raw) de GnuCobol, mis à jour fréquemment.

## Module 1 : Découverte du langage
>    - [Vidéo tirée de EuroInformation sur leur vision du mainframe](https://www.youtube.com/watch?v=Cr92fllyNQw)
>    - [Cobol expliqué en 100 secondes](https://www.youtube.com/watch?v=7d7-etf-wNI)
>    - [Vidéo compilée du cours d'IBM sur le COBOL](https://www.youtube.com/watch?v=RdMAEdGvtLA)
>    - [Pour se rassurer sur l'utilité d'une mission Cobol](https://www.youtube.com/watch?v=MxR39NSEVuA&list=PLi58puj9JtP9BFjDIDd4z7TOUQgtHFsGD)

## Module 1 bis : Chaines Youtube
>   - [Français, avec de bons graphismes ]()
>   - [Anglais, hyper complet]()
>    -[Français, en complément sur quelques détails](https://www.youtube.com/playlist?list=PLi58puj9JtP9BFjDIDd4z7TOUQgtHFsGD) par Antoine Moreau

## Module 2 : Types de données et déclarations
>   - [Les différents types de variables disponibles](https://www.youtube.com/watch?v=boL9RkJosHI&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=5)
>   - [L'utilisation de tableaux en Cobol](https://www.youtube.com/watch?v=s-pBlWF-yIo&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=13)
>   - [Déclaration de fichiers](https://www.youtube.com/watch?v=xP9bIaa1_dM&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=24)
>   

## Module 3 : Instructions du Cobol
>   - [Calculs arithmétiques]()
>   - [Les structures de controle](https://www.youtube.com/watch?v=wDctK0-GD3Q&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=10)
>   - [Les structures de controle 2](https://www.youtube.com/watch?v=tYjiveQScgQ&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=20)
>   - [Les boucles](https://www.youtube.com/watch?v=aN9uS6UQpXk&list=PLCzWMflBCQWgcYKSkYCU9rYzIZ7mgoKo4&index=9)
>
>

## Module 4 : Interaction avec l’environnement

>   - [Manipulation de fichiers]()
>   - [Echange avec l'utilisateur]()
>   - [Gestion des appels systèmes]()
>   - [Programmation modulaire]()



Authors : 

>    @[Taumah](mailto:thomas.tresgots@consultants-solutec.fr)




## Travaux futurs
> [install DB2](https://www.ibm.com/docs/en/db2/11.5?topic=idds-installing-db2-database-servers-by-using-db2-setup-wizard-windows) 