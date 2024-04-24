       IDENTIFICATION DIVISION. 
       PROGRAM-ID. IsUserValid.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT BANK-RECORDS  ASSIGN TO '../../data/demo.dat'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.

       FILE SECTION. 
       FD BANK-RECORDS
           RECORD CONTAINS 29 CHARACTERS. 

       01 BANK-RECORD.
           03 RCD-PIN PIC 9(4).
           03 FILLER PIC X.
           03 RCD-NAME PIC X(7).
           03 FILLER PIC X.
           03 RCD-LAST-NAME PIC X(8).
           03 FILLER PIC X.
           03 RCD-AMMOUNT PIC 9(4)V99 .

       WORKING-STORAGE SECTION. 

       01 RCD-EOF PIC X VALUE SPACE .

       LINKAGE SECTION. 
       
       01 PIN PIC 9(4).
       01 STATUS-CODE PIC 9(4).

       PROCEDURE DIVISION 
       USING BY REFERENCE PIN STATUS-CODE . 
           
           INITIALIZE RCD-EOF.

           OPEN INPUT BANK-RECORDS .

      *  Avoid headers.      
           READ BANK-RECORDS INTO  BANK-RECORD
           AT END MOVE 'E' TO RCD-EOF.

           PERFORM UNTIL  RCD-EOF = 'E' OR 'S'
              READ BANK-RECORDS INTO BANK-RECORD
              AT END MOVE 'E' TO RCD-EOF
              NOT AT END
                 IF RCD-PIN = PIN THEN  
                    DISPLAY "Bonjour " RCD-NAME
                    MOVE 'S' TO RCD-EOF
                    MOVE 0 TO STATUS-CODE  
                 END-IF 
           END-PERFORM.

           CLOSE BANK-RECORDS.
           

       END PROGRAM IsUserValid.

       
