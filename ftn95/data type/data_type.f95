program data_type
    ! It can print two kinds data types seperated by comma 
    ! If use implicit none, it is necessay to define the variable
    implicit none
    integer :: character_age
    character(len = 3) :: character_name
    print *, 'hello world'
    character_name = 'Ray'
    character_age = 24
    print *, 'my name is ', character_name
    print *, 'my age is ', character_age
end program data_type