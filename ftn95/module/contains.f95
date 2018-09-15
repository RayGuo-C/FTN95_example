PROGRAM contain

IMPLICIT NONE

INTEGER :: i,j,k

i = 1; j = 1;k =1

PRINT *, i,j,k

CALL ABC(i,j,k)

PRINT *, i,j,k

CONTAINS 
!the function of contains 

END PROGRAM contain

!-----------------------------
    SUBROUTINE ABC(r,s,t)

    IMPLICIT NONE

   ! INTEGER, INTENT(IN) :: r,s
   ! INTEGER, INTENT(OUT) :: t
  
  INTEGER :: r,s  
  INTEGER :: t ! what the different between intent

    t = r + s

   END SUBROUTINE ABC
