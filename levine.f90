!
!

MODULE levine
  
  CONTAINS

  SUBROUTINE lev

      IMPLICIT NONE
      REAL::X,Y,Z
      REAL,DIMENSION(:),ALLOCATABLE::A,B
      REAL,DIMENSION(:,:),ALLOCATABLE::C,D
      INTEGER::i,j,n,m

      CALL random_number(X)
      WRITE(*,*) ' X:', X
      CALL random_number(Y)
      WRITE(*,*) 'Y:', Y

      WRITE(*,*) ' OUTPUT'

      n=10; m=20
      ALLOCATE(A(n)); ALLOCATE(B(m))
      call random_number(A); call random_number(B)

      WRITE(*,*) 'A:'
      DO i=1,n
        WRITE(*,*) i, A(i)
      END DO

      WRITE(*,*) 'B:'
      DO i=1,n
        WRITE(*,*) i, B(i)
      END DO

      DEALLOCATE(A); DEALLOCATE(B)

      n=4; m=5
      ALLOCATE(C(n,m)); ALLOCATE(D(m,n))
      CALL random_number(C)

      do i=1,n
        do j=1,m
                D(j,i) = C(i,j)
        END DO
      END DO

      WRITE(*,*) ' C:'
      DO i=1,n
        WRITE(*,*) (C(i,j),j=1,m)
      END DO

      WRITE(*,*) ' D:'
      DO i=1,m
        WRITE(*,*) (D(i,j),j=1,n)
      END DO

      DEALLOCATE(C); DEALLOCATE(D)

      STOP
    END SUBROUTINE lev

END MODULE levine


