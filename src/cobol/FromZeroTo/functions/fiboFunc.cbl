       identification division.
       program-id. recsolve recursive.

       data division.
       local-storage section.
       01  local-numb-to-solve1       PIC 9(10).
       01  local-numb-to-solve2       PIC 9(10).
       01  local-solution1            PIC 9(10).
       01  local-solution2            PIC 9(10).

       linkage section.
       01  ls-numb-to-solve           PIC 9(10).
       01  ls-solution                PIC 9(10).

       procedure division 
       using by reference ls-numb-to-solve ls-solution.

           EVALUATE ls-numb-to-solve
    
           WHEN 0
    
           MOVE 0 TO ls-solution
    
           WHEN 1
    
           MOVE 1 TO ls-solution
    
           WHEN OTHER
    
           compute local-numb-to-solve1 = ls-numb-to-solve - 1
           compute local-numb-to-solve2 = local-numb-to-solve1 - 1
    
           call "recsolve" using 
           by reference local-numb-to-solve1 local-solution1 
    
           call "recsolve" using 
           by reference local-numb-to-solve2 local-solution2 
    
           compute ls-solution = local-solution1 + local-solution2
    
       END-EVALUATE.
       end program recsolve.
       