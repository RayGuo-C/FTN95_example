program readeven
implicit none
! read even number form a file called evenodd.txt
integer :: num, i
open(10,file = 'evenodd.txt')
do i = 1,10
    read(10,*) num
    if (mod(num,2) > 0) then
        print *, 'the number must be even'
    else
        print *, 'this is even number that is ', num
    end if
end do
end program readeven