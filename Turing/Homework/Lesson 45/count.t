var name : array 1..12 of string
var count : array 1.. 12 of int
var input : string

for i : 1..10 
    put"Please enter a name of objec6 : "..
    get name (i)
    put"Please enter the amount of uhat object: "..
    get count (i)
end for

put"Please enter the object for which you would like to find the amount: "..
get input 

for a : 1.. 10 
    if input = name(a) then
        put "You have ", count(a), input, "."
    end if
end for
