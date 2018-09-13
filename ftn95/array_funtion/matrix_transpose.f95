program matrix_transpose
implicit none
real, allocatable, dimension(:,:) :: ra1, ra2, ra3,ra4
integer :: size1,size2
print *, 'please enter array size you want'
read *, size1,size2
allocate(ra1(size1,size2),ra2(size1,size2),ra3(size1,size2), ra4(size1,size2))
print *, 'please input the matrix ra1 you want'
call fill_array(size1,size2,ra1)
print *, 'please input the matrix ra2 you want'
call fill_array(size1,size2,ra2)
print *, 'please show the matrix ra1 you input'
call output(size1,size2,ra1)
print *, 'please show the matrix ra2 you input'
call output(size1,size2,ra2)
! there is limit for the size of matrix must be equal according to the linear algebra
print *, 'obtain the matrix ra3 by matmul ra1 and ra2'
ra3 = matmul(ra1,ra2)
call output(size1,size2,ra3)
print *, 'get the matrix ra4 that is the transpose of ra3'
ra4 = transpose(ra3)
call output(size1,size2,ra4)
deallocate(ra1,ra2)
end program matrix_transpose


!-----------------------------------------------
subroutine fill_array(size1,size2,ra)
implicit none
integer :: row,col,size1,size2
real, dimension(size1,size2) :: ra
real ::  num
do row = 1 , size1
   do col = 1 , size2
      print *, row, col
      read *, num
      ra(row, col) = num
   end do
end do
end subroutine fill_array

!-----------------------------------------------
subroutine output(size1,size2,ra)
implicit none
integer :: row,col,size1,size2
real, dimension(size1,size2)::ra
do row = 1,size1
    write (*,10) (ra(row,col), col = 1,size2)
    10 format(100f10.2)
end do
end subroutine output