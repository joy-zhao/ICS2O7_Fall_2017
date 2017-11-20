function isArmstrong (number : int) : boolean 
    var sum : int := 0 
    var new_num : string := intstr(number)
    for i : 1.. length(new_num)
        sum += strint(new_num(i)) ** length(new_num)
    end for
    if sum = number then
        result true
    else 
        result false
    end if
end isArmstrong

put "The Armstrong numbers below 10 000 are: "
for a : 1.. 10000
    if isArmstrong(a) then
        put a
    end if
end for.
