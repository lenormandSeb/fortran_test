program hello
    ! implicit none

    integer(2) :: number

    print *, 'Type a number :'
    read(*,*) number

    do n = 1, 10
        n_fact = n_fact*number
        print *, number, " ", n_fact
    end do
end program hello