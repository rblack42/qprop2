program qprop2
  ! Fortran 2018 implementation of Mark Drela's Qprop
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

subroutine get_arguments()
  ! process program command line
  integer :: nargs, stat, alen
  integer :: i 
  character(len = 256) :: line

  nargs = command_argument_count()
  i = 0
  do
    i = i + 1
    if (i .gt. nargs) exit
    call get_command_argument(i,line,alen,stat)
    print *, i,":",line(1:alen)
  end do
end subroutine get_arguments
