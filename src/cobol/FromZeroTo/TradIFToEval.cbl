       IDENTIFICATION DIVISION.
       PROGRAM-ID. TradIfToEval.
       AUTHOR. Thomas.
       
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 STATUT PIC X(15) VALUE ZERO.
       01 AGE PIC 99 VALUE ZERO.

       PROCEDURE DIVISION.

       MOVE 31 TO AGE.
       MOVE 'Celibataire' TO STATUT.

       DISPLAY 'Data : ' STATUT AGE.

       

       EVALUATE TRUE ALSO TRUE
           WHEN STATUT = 'Celibataire' ALSO AGE > 30
               DISPLAY 'Celibataire et mature.'
         
           WHEN STATUT = 'Celibataire' ALSO AGE <= 30
               DISPLAY 'Celibataire et jeune.'

           WHEN STATUT = 'Marie' ALSO AGE > 30
               DISPLAY 'Marie et mature.'
         
           WHEN STATUT = 'Marie' ALSO AGE <= 30
               DISPLAY 'Marie et jeune.'

           WHEN OTHER
               DISPLAY 'Autres Statuts'
        
           END-EVALUATE


           EVALUATE STATUT
               WHEN 'Celibataire'
                EVALUATE AGE
                    WHEN > 30
                       DISPLAY 'Celibataire et mature.'
                    WHEN OTHER 
                       DISPLAY 'Celibataire et jeune.'
    
               WHEN 'Marie'
                   EVALUATE AGE
                       WHEN > 30
                           DISPLAY 'Marie et mature.'
                       WHEN OTHER 
                           DISPLAY 'Marie et jeune.'
               WHEN OTHER
                   DISPLAY 'Autres Statuts'
            
               END-EVALUATE
           
           STOP RUN.
    