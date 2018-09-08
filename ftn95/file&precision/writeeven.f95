program writeeven
! write even into a file called even.txt
implicit none
integer :: num
open(12,file = 'even.txt')
do num = 1,10
  if (mod(num,2) > 0) then
    print *, 'please write even into file'
  else
    write(12,*) num
  end if
end do
end program writeeven