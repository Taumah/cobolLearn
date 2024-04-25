       IDENTIFICATION DIVISION.
       PROGRAM-ID. Get-Directory.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FILE-NAME PIC X(100) VALUE "data/data.csv".
       01 ARG0 PIC X(255).
       01 COMMAND_STATUS PIC 9(4) VALUE 0.
       
       PROCEDURE DIVISION. 
           CALL 'SYSTEM' USING 'pwd' RETURNING  COMMAND_STATUS.
           
           ACCEPT ARG0 FROM COMMAND-LINE.
		   DISPLAY ARG0.
           STOP RUN.
       