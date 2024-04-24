       IDENTIFICATION DIVISION.
       PROGRAM-ID. openFile.
       AUTHOR. Thomas.


       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 filename            pic x(30).
       01 file-details.
           05 file-size           pic x(8) comp-x.
           05 file-date.
               10 date-day                pic x comp-x.
               10 month               pic x comp-x.
               10 year                pic x(2) comp-x.
           05 file-time.
               10 hours               pic x comp-x.
               10 minutes             pic x comp-x.
               10 seconds             pic x comp-x.
               10 hundredths          pic x comp-x.
       01 status-code pic 9.

       PROCEDURE DIVISION.

       MOVE 'src/data/demo.dat' TO filename.

       DISPLAY 'size : ' file-size ' | file-date :' date-day month year.

       CALL "CBL_CHECK_FILE_EXIST" using   filename
                                           file-details
                               returning   status-code.

       DISPLAY 'size : ' file-size ' | file-date :'  date-day month year.

       DISPLAY STATUS-CODE.
       IF STATUS-CODE = 0
        DISPLAY "Le fichier existe."
       ELSE
           DISPLAY "Le fichier n'existe pas."
       END-IF.
       STOP RUN.
