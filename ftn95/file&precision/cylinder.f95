program cylinder
! caculate the area of cylinder
! input the radio, and high
! input the parameter pi
real :: radio, high, Area
real, parameter :: pi = 3.1415926
open(12,file = 'cylinder.txt')
print *, 'please write the surface area of cylinder'
print *, 'input radio and high, respectively'
read *, radio, high
write (12,*) "radio and high", radio, high
Area = pi * radio * 2 * high
write (12,*) "surface", Area
end program cylinder