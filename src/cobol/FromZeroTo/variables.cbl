       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.
       AUTHOR. Thomas.


       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 WS-DATE.
           02 YEAR PIC 9(4).
           02 MONTH PIC 9(2).
           02 DATE-DAY PIC 9(2).
           02 TIME-DAY.
               03 HOUR PIC 9(2).
               03 MINUTES PIC 9(2).
               03 SECONDS PIC 9(2).
       
       01 TEMPERATURE PIC S9(2).

       01 KG-PRICE PIC 9(2)V99.
       
       01 PROFIT-1 PIC ZZZ9. 
       01 PROFIT-2 PIC ***9.

       01 PROFIT-3 PIC ZZZ9.99. 

       01 PROFIT-4 PIC 9999B9999B99.

       01 WS-COMPACKED-VAR.
           05 WS-COMP-V1 PIC 9(9)   COMP-3.
           05 WS-COMP-V2 PIC 9(5)   COMP-3.
           05 WS-COMP-V3 PIC 9(3)V99  COMP-3.

       PROCEDURE DIVISION.
           MOVE -88 TO TEMPERATURE.
           DISPLAY TEMPERATURE.
       STOP RUN.


       