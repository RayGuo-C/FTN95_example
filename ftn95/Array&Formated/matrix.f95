program matrix
! write a matrix that is [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1]
implicit none
integer, parameter :: raw = 4, col = 4
integer, dimension(raw, col) :: x
integer :: i, j
do i = 1,raw
  do j = 1,col
    if (i == j) then
      x(i,j) = 1
     else
      x(i,j) = 0
     end if
  end do
end do 
do i = 1,raw
  do j = 1,col
     print *, x(i,j)
  end do
end do
end program matrix