program biseccion
  
implicit none
real:: a,b,c,error,f
error=1.0e-06
write(*,*)"Proporciona dos n�meros en donde se encuentre la raiz"

10 read(*,*) a,b
15 if (f(a)*f(b) .lt. 0) then
c=(a+b)/2.0
else
write(*,*)"Ingresa otro valor donde se encuentren las raices"
goto 10
end if
if (f(a)*f(c) .lt. 0) then
b=c
else
a=c
end if
if (abs(b-a) .gt. error) goto 15


write(*,*)"La raiz es:",c
end program

real function f(x)
implicit none
real::x
f=x**3-x-2
end function
