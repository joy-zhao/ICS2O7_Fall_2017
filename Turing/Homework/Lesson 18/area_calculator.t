var ltrih, ltrib, lsquares, radius : real	
var shape : string
put "Please enter a negative value when done. \n"
loop
	put "Please choose your desired shape starting with a capital letter: "..
	get shape
	if shape = "Square" then
	  put "Please enter a value for the side length of a square: " ..
	  get lsquares
	  put "The area of that square is ", lsquares**2, " units squared."
  	elsif shape = "Triangle" then
	  put"Please enter a value for the height and base, respectively seperated by a space: "..
	  get ltrih, ltrib
  	put "The area of that triangle is ", (ltrih*ltrib)/2, " units squared."
  	elsif shape = "Circle" then
  	put "Please enter the radius of the circle: "..
  	get radius
  	put "The area of that circle is ", radius**2*3.14, " units squared."
	else
	  put "Unfortunately your input is invalid, please retry. \n"
	end if
end loop
