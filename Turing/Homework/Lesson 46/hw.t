function lowerCase(inlist : array 1 .. count of string) : array 1 .. count of string
    for p : 1 .. count
        if inlist(p)>= "Z" and inlist(p)<= "A" then
            outlist(p) = chr(ord(list(p)) - ord("A") + ord("a")
        else 
            outlist(p) = inlist(p)
        end if
    end for
    result outlist
end lowerCase
            
var count : int
var 
for i : 1 .. count
    for a : 2 .. count
        if inlist (i) not= inlist (a) then
            sorted (i) += outlist (i)
        end if
    end for
end for
