! Kyle Latino
! MA305 Final Project
! Fractals

PROGRAM FINALpt2

    USE latino_pt2
       
    IMPLICIT NONE
    REAL, ALLOCATABLE, DIMENSION(:):: AB
    REAL, ALLOCATABLE, DIMENSION(:):: CD
    REAL:: R, A, B, C, D
    COMPLEX:: ZTGT, ZN, ZN1
    INTEGER:: i, J, M, N, K

    OPEN(unit=11,file='CONVERGED',status='unknown')

    ! read data from fractal.dat file
    READ(*,*) M, R, N, A, B, C, D

    ALLOCATE(AB(M))
    ALLOCATE(CD(M))


    CALL COMPLEXWINDOW(M, R, N, A, B, C, D, AB, CD)

    ! CALL ESCAPETIME(ZN, ZN1)

        do i=1,M 
           do j=1,M
            ZN = cmplx(AB(i),CD(j))
            DO k=1, N
              CALL ESCAPETIME(ZN, ZN1)
              ZN = ZN1
              if(abs(ZN).LE.R) then    
                write(11,*) REAL(ZN), AIMAG(ZN)
              endif    
            END DO
           enddo 
        enddo 

       close(11)



    STOP
END PROGRAM FINALpt2
