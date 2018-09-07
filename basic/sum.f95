program sum  !name of a program, and start this program
real :: answer, x, y !variable name
print *, 'Enter two numbers' 
read *, x ! input value from keyboard
read *, y
answer = x + y !operation
print *, 'the total is', answer
end program sum