procedure maket (height : int, width : int)
    if width mod 2 not= 0 then
        for i : 1 .. height 
            if i = 1 then
                for a : 1 .. width
                    put "*" ..
                end for
            else
                for b : 1 .. (width div 2)
                    put " " ..
                end for
                put "*".. 
            end if
        put ""
        end for
    else
        put "The width needs to be an odd number!"
    end if
end maket

%main
var height, width : int
put "Please enter a value for the height and width respectively: " 
get height, width
maket (height, width)
maket (7,5)
