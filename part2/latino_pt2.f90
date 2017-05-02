
MODULE LATINO_pt2

  CONTAINS

    FUNCTION Z(N)

        IMPLICIT NONE
        COMPLEX, INTENT(IN):: N
        COMPLEX:: Z

        Z = ((N+1)**2)*((N**2)+0.25)

    END FUNCTION Z

    FUNCTION DZ(N)

      IMPLICIT NONE
      COMPLEX, INTENT(IN)::N
      COMPLEX:: DZ

      DZ = (4*(N**3))+(6*(N**2))+(3*N)+0.5
      RETURN

    END FUNCTION DZ

    !newton's method on functions
    SUBROUTINE ESCAPETIME(ZN, ZN1)

      IMPLICIT NONE
      ! COMPLEX:: ESCAPETIME
      COMPLEX, INTENT(IN):: ZN
      COMPLEX:: ZN1

      ZN1 = ZN - (2*Z(ZN) / DZ(ZN))

      RETURN
    END SUBROUTINE ESCAPETIME




! calculate the next value of X using the Newton method for root finding.
    SUBROUTINE COMPLEXWINDOW(M, R, N, A, B, C, D, AB, CD)

        IMPLICIT NONE
        REAL:: A, B, C, D, R, DAB, DCD
        REAL, DIMENSION(0:M):: AB
        REAL, DIMENSION(0:M):: CD
        INTEGER:: M, N, I

        DAB = (ABS(A) + ABS(B)) / M
        DCD = (ABS(B) + ABS(D)) / M

      DO I=0, M
        AB(I) = A + (DAB*I)
        CD(I) = C + (DCD*I)
      END DO 

        RETURN

    END SUBROUTINE COMPLEXWINDOW


END MODULE LATINO_pt2

