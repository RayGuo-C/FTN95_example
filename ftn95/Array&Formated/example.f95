program neatoutput
	real :: x
    integer :: i
    x = 0.0;
    write(*,*) "       x       exp(x)      exp(x)"
    write(*,*) "              f format    e format"
    write(*,*) "     -------------------------------"
    do i = 1,10
    write(*,10) x,exp(x),exp(x)
    x = x + 0.1
    end do
10  format( 2 F10.2,E18.5)
end program neatoutput