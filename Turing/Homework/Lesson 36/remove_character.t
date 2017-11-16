function removechar(word : string, charac : char) : string
    var new_word : string := ""
    for i : 1.. length(word)
        if index(charac, word(i)) = 0 then
            new_word += word(i)
        end if
    end for
    result new_word
end removechar

var word : string
var c: char
put"Please enter a word and a letter: "
get word, c
put removechar(word, c) 
