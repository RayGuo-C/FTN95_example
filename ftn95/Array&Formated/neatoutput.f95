program neatoutput
! produce a table of x and e^x
implicit none
real :: x, y
integer :: i
x = 0.1
write (*,*) ('          x,          exp(x)') !write(*,*) means the reault will display on the default screen
write (*,*) ('       .....................')
do i = 1,10 !it's better way to do loop by using integer
  y = 2**x
  x = x+1
  write (*,10) x, y ! put the reat into 10 label
end do 
10 format(2 f15.2)
end program neatoutput
 