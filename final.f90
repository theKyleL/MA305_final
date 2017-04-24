! Kyle Latino
! MA305 Final Project
! Fractals

PROGRAM FINAL

    USE latino
    USE levine
       
    IMPLICIT NONE
    REAL:: x 
    REAL:: x0, e1 = 10.e-12, e2 = 10.0e-12
    INTEGER:: nMax = 20, i
    LOGICAL:: CONVERGES = .FALSE.


! PART A
    READ*, x0

    WRITE(*,*) x0, nMax, e1, e2

    DO i=0, nMax

       CALL FCN(x0, F, DF)
       WRITE(*,*) i, 'iterations' , 'X=', x0

       ! test for convergence
       CALL TEST_CONVERGENCE(CONVERGES, F, DF, x0)

       IF (CONVERGES) then
              WRITE(*,*) 'Converged at ', i, x0
              STOP
       END IF
    END DO

    STOP
END PROGRAM FINAL
