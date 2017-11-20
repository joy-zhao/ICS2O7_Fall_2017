function intcheck( ) : int
    var number : string
    loop
        get number
        if not(strintok(number)) then
            put"Please enter a number! "..
        else 
            exit
        end if
    end loop
    result strint(number)
end intcheck

function IntCheck( ) : int
    var number : string
    loop
        get number
        exit when strintok(number)
        put"Please enter a number!"
    end loop
    result strint(number)
end IntCheck


%main
var number : int
put "Please enter a number: "..
number := IntCheck()
