C FORTRAN program to simulate the children's game "Fizz Buzz" to 50

c234567
      program FIZZBUZZ
      IMPLICIT NONE
      INTEGER A
      A=0 
 10   A=A+1
      IF( MOD(A,15).EQ.0 ) GOTO 20
      IF( MOD(A,3).EQ.0 ) GOTO 30
      IF( MOD(A,5).EQ.0 ) GOTO 40
      WRITE(*,*) A
      IF(A<50) GOTO 10
 20   WRITE(*,*) 'Fizz Buzz'
      IF(A<50) GOTO 10
 30   WRITE(*,*) 'Fizz'
      IF(A<50) GOTO 10
 40   WRITE(*,*) 'Buzz'
      IF(A<50) GOTO 10
      END
