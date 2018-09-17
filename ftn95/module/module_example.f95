! Modules function
! 1. Packaging subprograms, data and interface blocks
! 2. Defining global data that can be used by more than one one routine
! 3. Declaring variables that can be made availble within any routines you choose
! 4. Importing a module entirely, for use, into anthor program or subroutine

! Note
! 1. You can add as many modules as needed, each will be in separate files and compiled separately.
! 2. The variables declared in a module specification part, are global to t0he module.
! 3. The variables declared in a module become global variables in any program or routine where the module is used.


module constants  
! statement declaration
implicit none 

   real, parameter, private :: pi = 3.1415926536  
   real, parameter, public :: e = 2.7182818285 
! When we declare some variable or subroutine as private, it is not available outside the module, of course except subroutine in model

!contains(subroutine and function definitions)   
contains      
   subroutine show_consts()          
      print*, "Pi = ", pi          
      print*,  "e = ", e     
   end subroutine show_consts 
   
end module constants 


program module_example     
use constants      
implicit none     

   real :: x, ePowerx
!  real :: radius, radius 
   x = 2.0
!  radius = 7.0
   ePowerx = e ** x
!   area = pi * radius**2     ! once use private varible for pi, here, we cannot use it successfully
   
   call show_consts() 
   
   print*, "e raised to the power of 2.0 = ", ePowerx
 !  print*, "Area of a circle with radius 7.0 = ", area  
   
end program module_example