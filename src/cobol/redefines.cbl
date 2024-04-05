       identification division.
       program-id. redefines.
       author. Thomas.

       DATA division.

       working-storage section.
       
       01 test-redef PIC X(3).
       01 test-redef2 redefines test-redef  PIC 9(3).
       01 test-redef3 redefines test-redef  PIC **9.


       procedure division.
       

       accept test-redef2.

       display test-redef.

       add 50 TO test-redef2.

       display test-redef3.

       stop run.
