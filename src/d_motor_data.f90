module motor_data
! input motor data store
implicit none

    integer, parameter :: max_name_length  = 32
    character :: motor_name = "default"
    integer :: motor_type = 1

end module motor_data
