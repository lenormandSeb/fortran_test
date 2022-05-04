program speed_calculator
    implicit none

    integer :: n

    TYPE calcul
    real :: speed
    real :: distance
    real :: time_do
    integer, dimension(3) :: convert
    END TYPE calcul

    Type(calcul) :: calculator

    print *, 'Quel est la vitesse ? (en km/h)'
    read(*,*) calculator%speed

    print *, 'Quel est la distance ? (en kilometres)'
    read(*,*) calculator%distance

    calculator%time_do = calculator%distance / calculator%speed

    do n = 1,size(calculator%convert)
        print *, n
        calculator%convert(n) = int(calculator%time_do)
        calculator%time_do = (calculator%time_do - calculator%convert(n)) * 60
    end do

    print *, calculator%convert(1), ' Heures'
    print *, calculator%convert(2), ' minutes'
    print *, calculator%convert(3), ' secondes'

    call print_un_coucou

end program speed_calculator


subroutine print_un_coucou
    character(len=80) :: jesuisunprint = 'coucou'

    print *, jesuisunprint
end subroutine