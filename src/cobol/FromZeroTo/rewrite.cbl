       IDENTIFICATION DIVISION. 
       PROGRAM-ID. RewriteFile.

       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION. 

       FILE-CONTROL.
           SELECT TARGETFILE ASSIGN TO "../../data/demo.data"
              ORGANIZATION IS INDEXED
              ACCESS MODE IS DYNAMIC
              RECORD KEY IS RCD-ID.

       DATA DIVISION. 
       FILE SECTION. 

       FD TARGETFILE.

       01 RCD-LINE.
           03 RCD-ID PIC 9(4).
           03 FILLER PIC X.
           03 RCD-NAME PIC X(7).
           03 FILLER PIC X.
           03 RCD-LAST-NAME PIC X(8).
           03 FILLER PIC X.
           03 RCD-AMMOUNT PIC 9(5)V99. 

       PROCEDURE DIVISION.

           OPEN OUTPUT TARGETFILE.

           WRITE RCD-LINE.

           MOVE "1234 thomas  tresgots   15   " TO RCD-LINE.
           WRITE RCD-LINE.
           
           MOVE "2341 martin  jochem    150   " TO RCD-LINE.
           WRITE RCD-LINE.  

           MOVE "3412 olivier cassin     48,5 " TO RCD-LINE.
           WRITE RCD-LINE.

           MOVE "4123 Doe     John      100   " TO RCD-LINE.  
           WRITE RCD-LINE.
           
           MOVE "4321 Alice   Smith       0,99" TO RCD-LINE.
           WRITE RCD-LINE.

           CLOSE TARGETFILE.
           STOP RUN.
