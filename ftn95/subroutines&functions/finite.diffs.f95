program finite_diff_matrix
implicit none
integer, dimension(10,10) :: a
integer :: i,j
do i = 1,10
  do j = 1,10
    if (i == j) then
      a(i,j) = 2
    else
      a(i,j) = 0
    end if
    if (i-1==0) then
      a(i,i+1) = -1
    else if(i + 1 == 11) then
      a(i,i-1) = -1
    else
      a(i,i-1) = -1
      a(i,i+1) = -1
     end if
   end do
end do
do i = 1, 10
    write(*,10) (a(i,j),j = 1,10)
end do
10 format(10i3)
end program finite_diff_matrix