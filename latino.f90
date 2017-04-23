
MODULE LATINO

  CONTAINS

    FUNCTION F(x)

        IMPLICIT NONE
        REAL, INTENT(IN):: X
        REAL:: F

        F(x) = X**3. + X**2. - X*3. - 3

    END FUNCTION F


! calculate the next value of X using the Newton method for root finding.
    FUNCTION NEXT_X

        IMPLICIT NONE
        REAL, INTENT(IN):: INPUT



        END FUNCTION NEXT_X

    SUBROUTINE FCN(xn, Fxn, DFxn)

        IMPLICIT NONE
        REAL, INTENT(IN):: xn

    END SUBROUTINE FCN

END MODULE LATINO
