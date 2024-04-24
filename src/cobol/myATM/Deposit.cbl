       IDENTIFICATION DIVISION. 
       PROGRAM-ID. DepositAccountFunction.
       
       ENVIRONMENT DIVISION.
       
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT BANK-RECORDS  ASSIGN TO '../../data/demo.dat'
           ORGANIZATION IS SEQUENTIAL.

       

       DATA DIVISION. 
       
       
       FILE SECTION. 
       FD BANK-RECORDS
           RECORD CONTAINS 29 CHARACTERS
           DATA RECORD IS BANK-RECORD. 

       01 BANK-RECORD.
           03 RCD-PIN PIC 9(4).
           03 FILLER PIC X.
           03 RCD-NAME PIC X(7).
           03 FILLER PIC X.
           03 RCD-LAST-NAME PIC X(8).
           03 FILLER PIC X.
           03 RCD-AMMOUNT PIC 9(4)V99 .
 
       WORKING-STORAGE SECTION. 

       01 RCD-EOF PIC X VALUE SPACE.
       01 AMMOUNT-TO-DEPOSIT PIC 9(4) VALUE 0.
       01 NEW-AMMOUNT PIC 9(4)V99.
       
       LINKAGE SECTION. 
       
       01 PIN PIC 9(4).
       01 STATUS-CODE PIC 9(4).

       PROCEDURE DIVISION 
       USING BY REFERENCE PIN STATUS-CODE . 
           
           INITIALIZE RCD-EOF.
           DISPLAY "Combien souhaitez vous déposer ?".
           ACCEPT AMMOUNT-TO-DEPOSIT.

           OPEN I-O BANK-RECORDS .
           DISPLAY "TRY"
           READ BANK-RECORDS INTO BANK-RECORD 
                 AT END 
                    MOVE 'E' TO RCD-EOF
           DISPLAY "TRY 2"

           PERFORM UNTIL RCD-EOF ='Y' OR 'E'
              READ BANK-RECORDS INTO BANK-RECORD 
                 AT END 
                    MOVE 'E' TO RCD-EOF
                 NOT AT END
                    DISPLAY BANK-RECORD                     
                    IF RCD-PIN = PIN THEN
                       DISPLAY "FOUND"
                      ADD AMMOUNT-TO-DEPOSIT TO 
                          FUNCTION NUMVAL(RCD-AMMOUNT) 
                          GIVING RCD-AMMOUNT 
                       REWRITE BANK-RECORD
                       DISPLAY "|" BANK-RECORD "|"  
                       MOVE 'Y' TO RCD-EOF 
              END-READ             
           END-PERFORM. 

           CLOSE BANK-RECORDS.

       END PROGRAM DepositAccountFunction.
                    