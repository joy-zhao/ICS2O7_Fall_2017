var word : string	
var totalwords : int := 1
put "Please enter "..
colour(red) put ":)"..
colour(black) put" when done"
loop
	put "\n", "Please enter words one at a time seperated by the the Return key."..
	get word
	exit when word = ":)"
	totalwords += 1
end loop
put "\n", "You inputed ", totalwords ," words. Thank you for using this program!"
