procedure pattern (max_value : int ) 
    for i : 1..max_value
        for a : 1.. i
            put i ..
        end for
    put " " ..
    end for
end pattern

var max_value : int
put "Please enter a maximum value: " ..
get max_value 
pattern(max_value)
