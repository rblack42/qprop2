module command_line
! *Description:* Handle command line arguments

contains

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

end module_command_line
