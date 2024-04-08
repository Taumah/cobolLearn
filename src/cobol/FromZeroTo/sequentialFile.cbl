       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmployeeFileExample.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
          SELECT EmployeeFile ASSIGN TO 'src/data/employee.dat'
              ORGANIZATION IS LINE SEQUENTIAL.

       
       DATA DIVISION.
       FILE SECTION.
       FD EmployeeFile.
       01 EmployeeRecord.
           05 EmployeeName     PIC X(15).
           05 EmployeeNumber   PIC 9(6).
           05 FILLER           PIC X(2).
           05 EmployeeSalary.
               06 INT-PART     PIC 9(4).
               06 FILLER       PIC x.
               06 DEC-PART     PIC v99.
      *   05 EmpSalaryAsDecimal REDEFINES EmployeeSalary PIC 9(4)V99. 


       WORKING-STORAGE SECTION.
       01 EOF PIC 9(1) VALUE 0.
      
       
       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           OPEN INPUT EmployeeFile.
           PERFORM READ-EMPLOYEES UNTIL EOF = 1.
           CLOSE EmployeeFile.
           STOP RUN.

       READ-EMPLOYEES.
           READ EmployeeFile INTO EmployeeRecord
           AT END
               SET EOF TO 1
           NOT AT END
           DISPLAY 'Employee Name: ' EmployeeName
                      ' Employee Number: ' EmployeeNumber
                      ' Employee Salary: ' INT-PART DEC-PART
              ADD 1 TO INT-PART
      *       ADD 1 TO EmployeeNumber
               
           DISPLAY 'Employee Name: ' EmployeeName
                      ' Employee Number: ' EmployeeNumber
                      ' Employee Salary: ' INT-PART DEC-PART 
           Display ' '.
