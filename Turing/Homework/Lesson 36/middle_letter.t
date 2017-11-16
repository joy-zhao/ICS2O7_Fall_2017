function middleletter(word : string): char
    if length(word) mod 2 = 0 then
        result word(length(word) div 2)
    else 
        result word(length(word) div 2 + 1)
    end if
end middleletter

var word : string
put"Please enter a string: "..
get word : *
put middleletter(word)
