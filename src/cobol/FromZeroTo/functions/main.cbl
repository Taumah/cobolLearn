       identification division.
       program-id. fibonacci.

       data division.
       working-storage section.
       01  ws-numb-to-solve           PIC 9(10).
       01  ws-solution                PIC 9(10).


       procedure division.
           display "What index of the fibonacci sequence would you like"
            "to find?".
       accept ws-numb-to-solve.

           call "recsolve" using by reference ws-numb-to-solve  
           ws-solution.

           display ws-solution.

           STOP RUN.

       end program fibonacci.
       