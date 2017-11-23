import GUI
procedure hello 
    put"Hello there :))"
    delay (2000)
    put"GORILLLLAAA"
end hello

var helloButton : int
helloButton := GUI.CreateButton (300, 100, 100, "Hi", hello) 

var quitButton : int
quitButton := GUI.CreateButton (150, 100, 100, "Quit", GUI.Quit)

loop 
    exit when GUI.ProcessEvent
end loop
