module mod_sharedata
! Q: how to reflect data share
Implicit None
real :: a = 0 , b = 0 , c = 0

contains

Subroutine fc_Init()
a = 3 ; b = 4 ; c = 5
end subroutine fc_Init

end module mod_sharedata

!------------------------------------

Program main
use mod_sharedata
Implicit None
write( * , * ) a , b , c !the initiation value in specification part

call fc_Init()
write( * , * ) a , b , c !subroutine value in contains of a module

a = 1 ; b = 2 ; c = 3
write( * , * ) a , b , c !main program value

call fc_Init()
write( * , * ) a , b , c !subroutine value

End Program main
