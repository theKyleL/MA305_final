
MODULE latino

  CONTAINS

  ! sort the values of an array in ascending order
  SUBROUTINE SORT_ARRAY(N, X)

        IMPLICIT NONE
        REAL, DIMENSION(:), ALLOCATABLE :: X
        INTEGER :: I, J, K, N
        REAL :: temp

! --- Sort the numbers into ascending order of magnitude 

L1:     DO J = 1, N
L2:             DO K = J+1, N
                        IF(X(J) > X(K)) THEN
                                temp = X(K)
                                X(K) = X(J)
                                X(J) = temp
                        END IF
                END DO L2
        END DO L1

        WRITE(*,*) 'Array in ascending order'
        DO i=1, n
              WRITE(*,*) X(i)
        END DO

  END SUBROUTINE SORT_ARRAY


  ! calculate variance of values in an array
  SUBROUTINE VARIANCE(N, X, aveValue, VAR)

        IMPLICIT NONE
        REAL, DIMENSION(:), ALLOCATABLE :: X
        INTEGER:: N, i
        REAL:: VAR, aveValue, SUM

        VAR = 0.
        DO i = 1, n
          VAR = VAR + (X(i) - aveValue) ** 2
        END DO

        VAR = VAR / (n - 1)

  END SUBROUTINE VARIANCE


  ! calculate the average of values in an array
  SUBROUTINE AVERAGE(N, X, aveValue)

        IMPLICIT NONE
        REAL, DIMENSION(:), ALLOCATABLE :: X
        INTEGER :: I, J, K, N
        REAL :: aveValue

        aveValue = 0
        DO i=1, n
              aveValue = aveValue + X(i)
        END DO
        aveValue = aveValue / n

  END SUBROUTINE AVERAGE

END MODULE latino
