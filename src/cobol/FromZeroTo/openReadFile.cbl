       IDENTIFICATION DIVISION.
       PROGRAM-ID. OpenReadFile.
       AUTHOR. Thomas.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILECSV ASSIGN TO '../../data/demo.dat'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILECSV
           LABEL RECORDS ARE STANDARD
           RECORDING MODE IS F.
       01 CSV-RECORD.
           05 CSV-ID         PIC 9(2).
           05 FILLER         PIC X.
           05 CSV-NAME       PIC X(7).
           05 FILLER         PIC X.
           05 CSV-FIRSTNAME  PIC X(8).
           05 FILLER         PIC X.
           05 CSV-AGE        PIC 99.
           05 FILLER         PIC X(6).

       WORKING-STORAGE SECTION.
       01 WS-EOF         PIC X VALUE 'N'.
       01 WS-CHAR        PIC X.

       PROCEDURE DIVISION.

           DISPLAY 'START'
           OPEN INPUT FILECSV.
           READ FILECSV INTO CSV-RECORD
           AT END MOVE 'Y' TO WS-EOF.
        
           DISPLAY 'Nom  Prénom  Âge'.
           PERFORM UNTIL WS-EOF = 'Y'
               DISPLAY CSV-NAME ' ' CSV-FIRSTNAME ' ' CSV-AGE
               READ FILECSV INTO CSV-RECORD
               AT END MOVE 'Y' TO WS-EOF
           END-PERFORM.

           CLOSE FILECSV.
           STOP RUN.
           