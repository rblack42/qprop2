module Motor
    !use Loader, only: prep_data_file
    implicit none

  contains

    subroutine load_motor_data(name)
      character(len=*), intent(in) :: name   ! data file to load

      print *, "Load motor data...", name
      !call prep_data_file(motor_name)
    end subroutine load_motor_data

end module Motor
