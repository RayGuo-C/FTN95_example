program check 
! integer and real arithmetic
implicit none
real :: x, y
integer :: i,z
x = 2
i  = 3
y = 1/3 ! since the 1 and 3 are both integer, the result cannot be integer. And return 0.0000 as y 
print *,y
z = 1/3
print *,z
y = 1/3.0 
print *, y
y = x * ((2 ** i)/3)
print *, y
y = x * ((2.0 ** i)/3)
print *, y
end program check