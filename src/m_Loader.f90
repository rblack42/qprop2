module Loader
    ! read data file and strip comments
    implicit none

  contains 

    subroutine prep_data_file(name)
      ! strip commants and newlines
      character(len=*), intent(in) :: name ! file to load

      print *, 'Reading raw data file:', name
    end subroutine prep_data_file

end module Loader
