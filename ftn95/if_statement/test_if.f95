program test
implicit none
! use of simple menu
real :: x,y,answer
integer :: choose
! set up a simple menu - the user may  enter 1,2,3
print *,  'choose one to operate'
print *, '1    multiply'
print *, '2    devide'
print *, '3    sum'
! start to excute
read *, choose
x = 4.5
y = 2
if (choose == 1) then
  answer = x * y
  print *, 'answer is', answer
else if (choose == 2) then
  answer = x / y
  print *, 'answer is', answer
else 
  answer = x + y
  print *, 'answer is', answer
end if
end program test