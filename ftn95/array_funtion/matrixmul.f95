program matrixmul
implicit none
real,allocatable,dimension(:,:) :: ra1, ra2, ra3
integer :: size
print *, 'this program shows array manipulating using square array'
print *, 'we will allocate the space for the array at run time'
print *, 'enter the size of your array'
read *, size
allocate(ra1(size,size), ra2(size,size), ra3(size, size))
print *, 'enter matrix element for ra1 row by row'
call fill_array(size,ra1)
print *, 'enter matrix element for ra2 row by row'
call fill_array(size,ra2)
print *, 'ra1'
call output(size,ra1)
print *, 'ra2'
call output(size,ra2)
print *, 'matmul of ra1 and ra2'
ra3 = matmul(ra1, ra2)
call output(size,ra3) 
deallocate(ra1,ra2,ra3)
end program matrixmul

!-------------------------------------------------
subroutine fill_array(size,ra)
implicit none
integer :: size, row, col
real, dimension(size,size) :: ra
real :: num
print *, 'hit a key and press enter to continue'
do row = 1,size
  do col = 1,size
    print *, row, col
    read *, num
    ra(row,col) = num
  end do
end do 
end subroutine fill_array

!-------------------------------------------------
subroutine output(size, ra)
implicit none
integer :: row, col, size
real, dimension(size,size) :: ra
character :: reply
print *, '----------------------------------------'
print *, 'hit a key and press enter to continue'
read *, reply
do row = 1,size
  write (*,10) (ra(row,col), col = 1, size)
end do
10 format(100f10.2)
end subroutine output