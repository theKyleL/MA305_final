
MODULE LATINO

  CONTAINS

    FUNCTION Fxn(X)

        IMPLICIT NONE
        REAL, INTENT(IN):: X
        REAL:: Fxn, F

        F = X**3. + X**2. - X*3. - 3

    END FUNCTION Fxn

    FUNCTION DFxn(X)

      IMPLICIT NONE
      REAL, INTENT(IN)::X
      REAL:: DFxn, DF

      DF = 3*X**2 + 2*X - 3

    END FUNCTION DFxn


! calculate the next value of X using the Newton method for root finding.
    SUBROUTINE FCN(xn, Fxn, DFxn)

        IMPLICIT NONE
        REAL:: xn
        REAL:: Fxn, DFxn

        xn = xn - (Fxn(xn)/DFxn(xn))

    END SUBROUTINE FCN

END MODULE LATINO
