       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MAIN-ATM.
       AUTHOR. Thomas.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 PIN PIC 9(4).
           88 PIN-VALID VALUE 1234.
       
       01 MENU-CHOICE PIC 9 VALUE 0.
           88 MENU-CONSULT VALUE 1.
           88 MENU-DEPOSIT VALUE 2.
           88 MENU-WITHDRAW VALUE 3.
           88 MENU-LEAVE  VALUE 4.

       PROCEDURE DIVISION.

           DISPLAY "Bienvenue chez MyATM Company!".
           PERFORM MENU1.

       MAIN-LOOP-ONCE-CONNECTED.
           PERFORM DISPLAY-OPTIONS THROUGH COMPUTE-USER-CHOICE UNTIL 
           MENU-LEAVE.           
           STOP RUN.
           

       MENU1.
           DISPLAY "Carte Insérée"
           PERFORM WITH TEST AFTER UNTIL PIN-VALID
              DISPLAY "Tapez votre code PIN"
              ACCEPT PIN
              IF NOT PIN-VALID THEN
                 DISPLAY "code PIN erroné"      
           END-PERFORM.

       DISPLAY-OPTIONS.
           DISPLAY "1. Consulter son solde.".
           DISPLAY "2. Effectuer un retrait.".
           DISPLAY "3. Effectuer un dépot.".
           DISPLAY "4. Quitter".
       
       COMPUTE-USER-CHOICE.
           ACCEPT MENU-CHOICE
           DISPLAY "Vous avez choisi " MENU-CHOICE.
           EVALUATE TRUE
              WHEN MENU-CONSULT
                 DISPLAY "CONSULT"
                 
              WHEN MENU-DEPOSIT
                 DISPLAY "Dépôt"
              WHEN MENU-WITHDRAW
                 DISPLAY "Retrait"
                 
              WHEN OTHER
                 MOVE 4 TO MENU-CHOICE
                 PERFORM SAY-BYE-BYE        

           END-EVALUATE.
            
              
       SAY-BYE-BYE.
           DISPLAY "Merci de faire affaires avec nous!".
           DISPLAY "Bonne journée".       
           