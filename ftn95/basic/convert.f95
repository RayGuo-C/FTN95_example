program convert
! this example shows the use of integer and character variables.
implicit none ! by including this in our program, fortran will check that we have properly declared all our variable types.
integer :: pounds, pence,total 
character :: name*10 
print *, 'what is your name?'
read *,name
print *, 'Hi ', name, '! enter numbers of pounds and pence'
read *, pounds, pence
total = 100*pounds + pence
print *,'the total money in pence is ',total 
end program convert