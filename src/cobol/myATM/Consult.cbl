       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ConsultAccountFunction.

       DATA DIVISION.

       WORKING-STORAGE SECTION. 

       01 USERV PIC 99.

       LINKAGE SECTION. 
       
       01 PIN PIC 9(4).
       01 STATUS-CODE PIC 9(4).

       PROCEDURE DIVISION 
       USING BY REFERENCE PIN STATUS-CODE .
       
           DISPLAY "Regardons les informations connues " 
           "pour compte n°" PIN.
       END PROGRAM ConsultAccountFunction.

       
