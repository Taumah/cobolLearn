       IDENTIFICATION DIVISION.
       PROGRAM-ID. LearnScreens.
       AUTHOR. Thomas.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 PSW PIC X(15).
       01 NOM PIC X(25).
       77 ch1       PIC 99.
       77 ch2       PIC 99.
       77 missing-qty     PIC 999 VALUE 100.

       01 somme PIC 9(3) VALUE 0.
           88 VALID-RANGE VALUE 100 THRU 999.
           88 INVALID-RANGE VALUE 0 THRU 99.


       SCREEN SECTION.
       
       01 ecran-entree.
           05 BLANK SCREEN.
           05 LINE-1.
               10 LINE 1 COLUMN 10 VALUE 'Entrez un chiffre : '.
               10 LINE 1 COLUMN 40 PIC 99 TO ch1.
           05 LINE-2.
               10 LINE 2 COLUMN 10 VALUE 'Un autre chiffre SVP : '.
               10 LINE 2 COLUMN 40 PIC 99 TO ch2.
       01 ecran-sortie.
           05 BLANK SCREEN.
           05 LINE-4.
               10 LINE 4 COLUMN 10 VALUE 'Voici la somme : '.
               10 LINE 4 COLUMN 40 PIC ZZZ using somme.

       01 ecran-missing-some.
           05 BLANK SCREEN.
               10 LINE 2 COLUMN 10 VALUE 'Il manque encore '.
               10 LINE 2 COLUMN 27 PIC Z99 TO missing-qty.
               10 LINE 20 COLUMN 79 VALUE ' '.
                  


       PROCEDURE DIVISION.
       
       PERFORM FRONT-PAGE UNTIL VALID-RANGE.
       STOP RUN.
       

       FRONT-PAGE.
           MOVE ZEROS TO ch1, ch2, somme.
           DISPLAY ecran-entree.
           ACCEPT ecran-entree.
           ADD ch1 to ch2 GIVING somme.

           DISPLAY ecran-sortie.

           IF INVALID-RANGE THEN
               DISPLAY ecran-missing-some
               ACCEPT ecran-missing-some
           END-IF 

           INITIALIZE somme.
           accept Ecran-Sortie.


           