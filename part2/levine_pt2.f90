!
!

MODULE levine
  
  CONTAINS

      SUBROUTINE TEST_CONVERGENCE(CONVERGES, x0, x)
      ! |1 − xn+1/xn| < ε1
      ! |F (xn)| < ε2

      USE latino_pt2

      IMPLICIT NONE
      DOUBLE PRECISION:: x0, x, e1 = 10.0e-12 , e2 = 10.0e-12
      LOGICAL:: CONVERGES

      WRITE(*,*) "x0: ", x0, "x:", x
      WRITE(*,*) "F(x): ", F(x) 
      WRITE(*,*) "VALUE 1 ", ABS(1-(x0/x))
      WRITE(*,*) "VALUE 2 ", ABS(F(x))
      WRITE(*,*)

      IF (ABS(1-(x0/x)) .LT. e1 .AND. ABS(F(x)) .LT. e2) THEN
        CONVERGES = .TRUE.

      END IF

    END SUBROUTINE TEST_CONVERGENCE


END MODULE levine

