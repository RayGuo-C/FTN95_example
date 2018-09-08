program test_extend_precision
! demonstrate use of extended precision
implicit none
integer, parameter :: ikind = selected_real_kind(p = 15)! define a constant variable that cannot be changed and there are three kind of precision including 6,15,and 18
real(kind = ikind) :: val, x, y
val = 10/3
print *,'10/3= ' ,val
val = 10.0/3
print *,'10.0/3= ' ,val
val = 10.0_ikind/3
print *,'10.0_ikind/3= ' ,val
x = 10.0
y = 3.0
val = x/y
print *,'10.0(x)/3.0(y)= ' ,val
x = 10.0
y = 3
val = x/y
print *,'10.0(x)/3(y)= ' ,val
x = 10.0
val = x/3
print *,'10.0(x)/3= ' ,val
val = 0.00004_ikind
print *, val
val = 0.00004
print *, val
end program test_extend_precision