program Ising_def
  implicit none
  integer s(0:1000,0:1000)
  real*8 varE,epsilon,dran_u,aux,temperatura,t,dt,q_aux,m_aux
  real*8 mag,suma,p,exponencial,suma_aux,exponente_aux
  integer i_dran,i,j,N,q,m,k,contador,auxi

  call dran_ini(12223123)
  N=60
  t=0.d0
  dt=0.01
  contador=0.d0
  temperatura=0.5d0

  open (10,file='matrices_T=0.5K.dat')
  open (11,file='magnetizacion_T=0.5K.dat')

  s=1

  ! Inicialización de configuración aleatoria
  do i=1,N
     do j=1,N
        aux=dran_u()
        if (aux.lt.0.5d0) then
           s(i,j)=1
        else
           s(i,j)=-1
        end if
     enddo
  enddo

  ! Condiciones periódicas
  do i=1,N
     s(0,i)=s(N,i)
     s(N+1,i)=s(1,i)
     s(i,0)=s(i,N)
     s(i,N+1)=s(i,1)
  enddo

  call dibujar(s,N)

  ! Iteración Monte Carlo
  do k=1,100000*N*N
     contador=contador+1
     q=i_dran(N)
     m=i_dran(N)

     suma_aux=s(q+1,m)+s(q-1,m)+s(q,m+1)+s(q,m-1)
     varE= 2.d0*s(q,m)*suma_aux
     exponente_aux= -1.d0* varE/temperatura
     exponencial=dexp(exponente_aux)

     if (exponencial.lt.1.d0) then
        p=exponencial
     else
        p=1.d0
     end if

     epsilon=dran_u()
     if (epsilon.lt.p) then
        s(q,m)=-1*s(q,m)
        if (q.eq.N) then
           s(0,m)=-s(0,m)
        endif
        if (q.eq.1) then
           s(N+1,m)=-s(N+1,m)
        endif
        if (m.eq.N) then
           s(q,0)=-s(q,0)
        endif
        if (m.eq.1)then
           s(q,N+1)=-s(q,N+1)
        endif
     endif

     t=t+dt

     if (contador.eq.100*N*N) then
        call dibujar(s,N)
        suma=0.d0
        do j=1,N
           do i=1,N
              suma=suma+s(i,j)
           end do
        end do
        mag=1.d0/dfloat(N*N)*suma
        write(11,*) t,mag
        contador=0.d0
     endif
  end do

  close(10)
  close(11)
  close(12)
  close(13)

  stop
end

include 'dranxor2_new.f'

subroutine dibujar(s,N)
  integer s(0:1000,0:1000)
  integer i,j,N
  do j=1,N
     write (10,*)(s(i,j),i=1,N) 
  end do
  write(10,*)
  write(10,*)
  return
end
