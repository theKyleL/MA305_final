! Kyle Latino
! MA305 Final Project
! Fractals

PROGRAM FINAL

    USE latino
    USE levine
       
    IMPLICIT NONE
    REAL, EXTERNAL:: FCN, Fxn, DFxn,  x
    REAL:: x0, e1 = 10.e-12, e2 = 10.0e-12
    INTEGER:: nMax = 20, i

! PART A
    READ*, x0

    WRITE(*,*) x0, nMax, e1, e2

    DO i=0, nMax

       CALL FCN(x0, e1, e2)
       WRITE(*,*) i, x0

       ! test for convergence
       IF (TRUE) then
              WRITE(*,*) 'Converged at ', i, x0

       END IF
END DO

    STOP
END PROGRAM FINAL
