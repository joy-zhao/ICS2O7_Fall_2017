import GUI
var textField1, textField2 : int
var textFieldLabel, textFieldLabel2 : int
var quitButton : int

procedure echoTextField (textFieldContents : string)
    var message : real
    var new_message : string
    message := strreal(textFieldContents) / 2.54
    new_message := realstr(message,0)
    GUI.SetText(textField2, new_message)
end echoTextField

procedure setTextField (textFieldContents : string)
    var message : int
    var new_message : string
    var input : string
    input := GUI.GetText(textField1)
    message := strreal(textFieldContents) div 2.54
    new_message := intstr(message)
    GUI.SetText(textField2, new_message)
end setTextField
    
textField1 := GUI.CreateTextField (10, 100, 200, "", echoTextField)
textFieldLabel := GUI.CreateLabel(10, 100 +  GUI.GetHeight (textField1), "Please enter your value in centimetres:")
quitButton := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)
textFieldLabel2 := GUI.CreateLabel(10, 35 +  GUI.GetHeight (textField1), "That is equal to:")
textField2 := GUI.CreateTextField (10, 30, 200, "   inches", setTextField)


loop
    exit when GUI.ProcessEvent
end loop
