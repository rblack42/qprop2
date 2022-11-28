module Propeller
    use Loader, only: prep_data_file
    implicit none


  contains

    subroutine load_prop_data(name)
      character(len=*), intent(in) :: name

      print *, "Load prop data...",name
      call prep_data_file(name)
    end subroutine load_prop_data

end module Propeller
