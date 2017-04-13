! Kyle Latino
! MA305 Final Project
! Fractals

PROGRAM final

       USE latino
       USE levine
       
       IMPLICIT NONE
       REAL, DIMENSION(:,:), ALLOCATABLE:: A 
       REAL, DIMENSION(:), ALLOCATABLE:: X, ROWSUM, COLSUM
       INTEGER:: l, m, n = 13, i, j
       REAL:: maxValue, minValue, aveValue, sum, var, stdDev

       ! declare demensions
       ALLOCATE(X(n))

       ! populate the matrix A with random values'
       DO i=1, n
              CALL random_number(X(i))
       END DO

       ! print random values
       WRITE(*,*) 
       WRITE(*,*) '============================================================'
       WRITE(*,*) 'Random Array'
       WRITE(*,*) '============================================================'

       DO i=0, 2
              WRITE(*,*) X(i*5 + 1), X(i*5 + 2), X(i*5 + 3), X(i*5 + 4), X(i*5 + 5)
       END DO
       WRITE(*,*)
       WRITE(*,*) '============================================================'
       WRITE(*,*) 'Sorted Array'
       WRITE(*,*) '============================================================'

       CALL SORT_ARRAY(N, X)

       CALL AVERAGE(N, X, aveValue)

       ! compute variance
       CALL VARIANCE(N, X, aveValue, var)

       ! compute std dev
       stdDev = SQRT(var)

       maxValue = MAXVAL(X)
       minValue = MINVAL(X)

       WRITE(*,*)
       WRITE(*,*) 'Maximum Array value: ', maxValue
       WRITE(*,*) 'Minimum Array value: ', minValue
       WRITE(*,*) 'Array Sum: ', SUM(X)
       WRITE(*,*) 'Average Array value: ', aveValue
       WRITE(*,*) 'Sample Variance: ', var
       WRITE(*,*) 'Sample Standart Deviation: ', stdDev

       DEALLOCATE(X)

       STOP
END PROGRAM final
