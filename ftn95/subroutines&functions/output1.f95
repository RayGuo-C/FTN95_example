program output1
implicit none 
real, dimension(3) :: a, b, c
! initialise arrays
a = 1.5
b = 2.5
c = 3.5
write(*,1) 'a', a
call prompt()
write(*,1) 'b', b
call prompt()
write(*,1) 'c', c
call prompt()
 write(*,1) 'a*b*c', a*b*c
1 format(a, 3f8.3)
end program output1


! subroutine 
! Note: 1. a subroutine can do a specific task which reflected by its name
!       2. all the variables in subroutines are hidden from the main program, which means the variables arenot effect each other in subroutine or main program
!       3. it is easy to declar variables in subroutines, therefore, using implicit none in subroutines to guard this
!       4. the data type is same for variables in subroutine and main 
subroutine prompt()
implicit none
character answer*1 ! the reason to add *1
print *, 'type y to continue or any other key to finish'
read *, answer
if (answer /= 'y') stop
end subroutine prompt