var name : string
colour (black) put "When you have finished using this program, please input "..
colour (red) put "I am done."..
colour (black) put"(Please follow this exact format)", skip
loop
  put"Please enter your name: "..
  get name : *  %repeats name
  exit when name = "I am done."
  put "Hello, ", name, "!!", skip
end loop
put"Thank you for using this program, Have a good day!"
