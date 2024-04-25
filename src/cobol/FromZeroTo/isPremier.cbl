       IDENTIFICATION DIVISION.
       PROGRAM-ID. IsPremier.
       AUTHOR. Thomas.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-U-INPUT PIC 9(5) VALUE ZERO.
       01 DIVIDER PIC 9(5) VALUE 2.
       01 LEFT-DIV PIC 9(5) VALUE ZERO.
       01 RESULT PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.

           DISPLAY "Nombre a tester : ".
           ACCEPT WS-U-INPUT.

           IF WS-U-INPUT <= 0 THEN
              DISPLAY "Le nombre ne peut être négatif"
              STOP RUN
           END-IF
       
           PERFORM UNTIL DIVIDER >= WS-U-INPUT 
              DIVIDE WS-U-INPUT BY DIVIDER GIVING RESULT 
                 REMAINDER LEFT-DIV
              IF LEFT-DIV = 0 THEN
                 DISPLAY WS-U-INPUT " n'est pas un nombre premier"
                 DISPLAY "Premier diviseur trouvé : " DIVIDER
                 STOP RUN
           END-IF
           
           ADD 1 TO DIVIDER
           END-PERFORM


       IF DIVIDER = WS-U-INPUT THEN
           DISPLAY WS-U-INPUT " est un nombre premier"
       END-IF.

       STOP RUN.
