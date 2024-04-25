       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmployeeFileExample.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION. 
       SPECIAL-NAMES. 
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EmployeeFile ASSIGN TO '../../data/demo.dat'
              ORGANIZATION IS LINE SEQUENTIAL.

       
       DATA DIVISION.
       FILE SECTION.

       FD EmployeeFile.
       01 EmployeeRecord.
           05 EmployeeID     PIC 9(4).
           05 FILLER           PIC X.
           05 EmployeeName   PIC X(7).
           05 FILLER           PIC X.
           05 EmployeeLastName PIC X(8).
           05 FILLER           PIC X.
           05 EmployeeAmmount PIC 9(4)V99.

           
      *   05 EmpSalaryAsDecimal REDEFINES EmployeeSalary PIC 9(4)V99. 


       WORKING-STORAGE SECTION.
       01 EOF PIC 9(1) VALUE 0.
      
       
       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           OPEN INPUT EmployeeFile.
           
           READ EmployeeFile INTO EmployeeRecord
           AT END
               SET EOF TO 1
           END-READ.
           PERFORM READ-EMPLOYEES UNTIL EOF = 1.
           CLOSE EmployeeFile.
           STOP RUN.

       READ-EMPLOYEES.
      *    Lecture des headers     
           READ EmployeeFile INTO EmployeeRecord
           AT END
               SET EOF TO 1
           NOT AT END
              DISPLAY 'Employee Name: ' EmployeeName 
              ' ' EmployeeLastName 
                         ' Employee Number: ' EmployeeID 
                         ' Employee Salary: ' EmployeeAmmount 
                 ADD 1 TO EmployeeAmmount 
                  
              DISPLAY 'Employee Name: ' EmployeeName 
              ' ' EmployeeLastName 
                         ' Employee Number: ' EmployeeID 
                         ' Employee Salary: ' EmployeeAmmount
           END-READ.
