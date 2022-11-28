module prop_data
! input propeller data store
implicit none

    integer :: nblades = 2
    integer, parameter :: max_points = 51
    character(len = 31) :: prop_name = 'default_prop'
    real :: chord(max_points)
    real :: beta(max_points)
    
end module prop_data
