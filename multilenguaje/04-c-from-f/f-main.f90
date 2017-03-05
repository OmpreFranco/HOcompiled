program testsum
! En este codigo queremos combinar codigo fortran llamando alguna funcion de C
  implicit none

  integer, parameter :: n=200
  integer :: data(n), asum, i , a
  integer :: sum_abs 
  do i=1,200
    data(i) = i-100
  end do
  asum = 0  
  a = sum_abs(data,n,asum)
  print*, a,sum_abs(data,n,asum)
end program testsum 
