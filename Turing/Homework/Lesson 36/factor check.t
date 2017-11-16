function factorcheck(n1 : int , n2 : int) : boolean
    if n2 mod n1 = 0 then
        result true 
    else 
        result false
    end if 
end factorcheck

%main
var a : array 1..2 of int
randint(a(1), 1, 100)
randint(a(2), 1, 100)
put factorcheck (a(1), a(2))
