program LeibnizFormula
  implicit none
  integer :: i = 0
  real(8) :: s = 0.0
  do i=0, 10**8
     s = s + (-1.0)**i /(2.0*i + 1.0)
  end do
  print *, 'Ans:', s*4
end program LeibnizFormula
      
