       IDENTIFICATION DIVISION.
       PROGRAM-ID. READINPUT.
       AUTHOR. Thomas.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-USER-NAME PIC X(12).



       PROCEDURE DIVISION.

           DISPLAY 'Bienvenue cher COBOListe'.
           DISPLAY 'Quel est votre nom?'.


           ACCEPT WS-USER-NAME.

           DISPLAY 'Enchanté ' WS-USER-NAME.    

           STOP RUN.
           