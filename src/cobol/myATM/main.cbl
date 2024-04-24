       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MAIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 PIN PIC 9(4).
       
       01 MENU-CHOICE PIC 9 VALUE 0.
           88 MENU-CONSULT VALUE 1.
           88 MENU-DEPOSIT VALUE 2.
           88 MENU-WITHDRAW VALUE 3.
           88 MENU-LEAVE  VALUE 4.

       01 PROGRAM-STATUS-CODE PIC 9(4) VALUE 1.
       01 TRIES PIC 9 VALUE 3.
      
       PROCEDURE DIVISION.

           DISPLAY "Bienvenue chez MyATM Company!".
           PERFORM MENU1.

       MAIN-LOOP-ONCE-CONNECTED.
           PERFORM DISPLAY-OPTIONS THROUGH COMPUTE-USER-CHOICE UNTIL 
           MENU-LEAVE.           
           STOP RUN.
           

       MENU1.
           DISPLAY "Carte Insérée"
           PERFORM WITH TEST AFTER UNTIL PROGRAM-STATUS-CODE = 0 
                                   OR TRIES = 0
              DISPLAY "Tapez votre code PIN"
              ACCEPT PIN

              CALL "IsUserValid" USING BY REFERENCE PIN 
                 PROGRAM-STATUS-CODE
              IF PROGRAM-STATUS-CODE = 1 THEN *> Retour d'erreur
                 DISPLAY "Code Pin erroné"
                 SUBTRACT 1 FROM TRIES
                 DISPLAY TRIES " Essais restants"
      
           END-PERFORM.

           IF TRIES = 0 THEN
              DISPLAY "Carte Avalée"
              STOP RUN
           END-IF.

           
       DISPLAY-OPTIONS.
           DISPLAY "1. Consulter votre solde.".
           DISPLAY "2. Effectuer un dépot.".
           DISPLAY "3. Effectuer un retrait.".
           DISPLAY "4. Quitter".
       
       COMPUTE-USER-CHOICE.
           ACCEPT MENU-CHOICE
           DISPLAY "Vous avez choisi " MENU-CHOICE.
           EVALUATE TRUE
              WHEN MENU-CONSULT
                 CALL "ConsultAccountFunction" 
                 USING PIN PROGRAM-STATUS-CODE
              
              WHEN MENU-DEPOSIT
                 CALL "DepositAccountFunction"
                 USING PIN PROGRAM-STATUS-CODE 
              WHEN MENU-WITHDRAW
                 DISPLAY "Retrait"
                 
              WHEN OTHER
                 MOVE 4 TO MENU-CHOICE
                 PERFORM SAY-BYE-BYE        

           END-EVALUATE.
            
              
       SAY-BYE-BYE.
           DISPLAY "Merci de faire affaires avec nous!".
           DISPLAY "Bonne journée".       
           

           STOP RUN.
