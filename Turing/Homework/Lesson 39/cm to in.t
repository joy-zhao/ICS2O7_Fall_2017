import GUI
var quitButton, convertButton, textField1, textField2 : int

function IntCheck () : real
    var number : string
    loop
        if not(GUI.ProcessEvent) then
            number := GUI.GetText (textField1)
            if strrealok (number) then
                result strreal (number)
            elsif strintok (number) then
                result strint (number)
            else
                GUI.SetText (textField2, "Please enter a NUMBER!")
            end if
        end if
    end loop
end IntCheck


procedure convert (tfc : string)
    var cm, temp : real
    var message, inches : string
    temp := IntCheck ()
    cm := temp div 2.54
    inches := realstr (cm, 0)
    message := realstr (temp, 0) + " cm = " + (inches) + " inches"
    GUI.SetText (textField2, message)
end convert

procedure convertButtonpro
    convert (GUI.GetText (textField1))
end convertButtonpro

procedure quitPro
    GUI.Quit
end quitPro

quitButton := GUI.CreateButton (10, 100, 80, "quit", quitPro)
convertButton := GUI.CreateButton (300, 100, 80, "Convert", convertButtonpro)
textField1 := GUI.CreateTextField (100, 50, 200, "Enter a value in cm", convert)
textField2 := GUI.CreateTextField (100, 200, 200, "", convert)

loop
    exit when GUI.ProcessEvent
end loop
