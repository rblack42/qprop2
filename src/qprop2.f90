program qprop2
! *Description:* Fortran 2018 implementation of Mark Drela's Qprop
  
use command_line
  use Propeller, only: load_prop_data
  use Motor, only: load_motor_data
  
  implicit none

  character (len = 7) ::  version = '0.1.0'
  
  ! display program version
  print *, 'Qprop2 Version ',version

  ! process the command line
  call get_arguments()

  ! load prop and motor data --------------------
  call load_prop_data("defaukt_prop")
  call load_motor_data("default_motorz")

end program qprop2


