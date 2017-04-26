!
!

MODULE levine
  
  CONTAINS

      SUBROUTINE TEST_CONVERGENCE(CONVERGES, x0)
      ! |1 − xn+1/xn| < ε1
      ! |F (xn)| < ε2

      USE latino

      IMPLICIT NONE
      REAL:: x0, e1 = 10.e-12 !, e2 = 10.0e-12
      LOGICAL:: CONVERGES

      WRITE(*,*) "VALUE 1 ", ABS(1-(x0+1/x0))
      WRITE(*,*) "VALUE 2 ", ABS(F(x0))
      WRITE(*,*)

      IF (ABS(1-(x0+1/x0)) .LT. e1 .AND. ABS(F(x0)) .LT. e1) THEN
        CONVERGES = .TRUE.

      END IF

    END SUBROUTINE TEST_CONVERGENCE


END MODULE levine


