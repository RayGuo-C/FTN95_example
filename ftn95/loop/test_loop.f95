program test_loop
! make a calculation by using a do loop
implicit none
integer x
real y
do x = -5, 5
  if (x == 0) then
    print *, 'zero cannot be devide!'
  else
    y = 1.0 / x
    print *,y
    end if
end do  
end program test_loop