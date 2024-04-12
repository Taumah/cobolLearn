       IDENTIFICATION DIVISION.
       PROGRAM-ID. useFiles.
       AUTHOR. Thomas.


       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT F-EMPLOYEE ASSIGN TO "src/data/employee.dat"
               FILE STATUS IS FS-EMPLOYEE. 

       DATA DIVISION.
       FILE SECTION.

       FD F-EMPLOYEE 
           DATA RECORD IS F-EMPLOYEES-NAME.
       01 F-READ-LINE PIC X(31).

       WORKING-STORAGE SECTION.

       01 FS-EMPLOYEE PIC 99.
       01 F-EMPLOYEES-NAME PIC X(80).

       PROCEDURE DIVISION.

       PERFORM READ-FILE.

       READ-FILE.
           OPEN INPUT F-EMPLOYEE
           PERFORM UNTIL FS-EMPLOYEE NOT = "00"
               READ F-EMPLOYEE
                   AT END
                       SET FS-EMPLOYEE TO "00"
                   NOT AT END
                       READ F-EMPLOYEE INTO F-EMPLOYEES-NAME
                       DISPLAY "LINE READ"
               END-READ
           END-PERFORM
           CLOSE F-EMPLOYEE
           STOP RUN.
