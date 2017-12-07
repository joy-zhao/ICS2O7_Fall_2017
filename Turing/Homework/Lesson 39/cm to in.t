import GUI
var quitButton, convertButton, textField1, textField2, tf1Label, tf2Label : int

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
    var cm : int 
    var temp : real
    var message : string
    temp := IntCheck ()
    cm := temp div 2.54
    message := realstr (temp, 0) + " cm = " + (intstr(cm)) + " inches"
    GUI.SetText (textField2, message)
end convert

procedure convertButtonpro
    convert (GUI.GetText (textField1))
end convertButtonpro

procedure quitPro
    GUI.Quit
end quitPro

quitButton := GUI.CreateButton (10, 125, 80, "quit", quitPro)
convertButton := GUI.CreateButton (300, 125, 80, "Convert", convertButtonpro)
textField1 := GUI.CreateTextField (100, 175, 200, "", convert)
textField2 := GUI.CreateTextField (100, 75, 200, "", convert)
tf1Label := GUI.CreateLabel (100, 195, "Please enter a value in cm: ")
tf2Label := GUI.CreateLabel (100, 95, "Converted to inches is: ")


loop
    exit when GUI.ProcessEvent
end loop
