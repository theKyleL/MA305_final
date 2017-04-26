
MODULE LATINO

  CONTAINS

    FUNCTION F(X)

        IMPLICIT NONE
        DOUBLE PRECISION, INTENT(IN):: X
        DOUBLE PRECISION:: F

        F = X**3. + X**2. - X*3. - 3

    END FUNCTION F

    FUNCTION DF(X)

      IMPLICIT NONE
      DOUBLE PRECISION, INTENT(IN)::X
      DOUBLE PRECISION:: DFxn, DF

      DF = 3*X**2 + 2*X - 3
      RETURN

    END FUNCTION DF


! calculate the next value of X using the Newton method for root finding.
    SUBROUTINE FCN(xn, Fxn, DFxn)

        IMPLICIT NONE
        DOUBLE PRECISION:: xn
        DOUBLE PRECISION:: Fxn, DFxn

        xn = xn - (Fxn(xn)/DFxn(xn))
        RETURN

    END SUBROUTINE FCN

    ! SUBROUTINE TEST_CONVERGENCE(CONVERGES, F, DF)
    !   ! |1 − xn+1/xn| < ε1

    !   USE latino

    !   IMPLICIT NONE
    !   REAL:: x0, e1 = 10.e-12, e2 = 10.0e-12
    !   LOGICAL:: CONVERGES

    !   IF () THEN

    !   END IF

    ! END SUBROUTINE TEST_CONVERGENCE

END MODULE LATINO

