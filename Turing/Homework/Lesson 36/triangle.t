procedure triangle (a1, a2, a3 : real)
    if a1 + a2 + a3 = 180 then
        if a1 = a2 and a2 = a3 then
            put "your triangle is equilateral."
        elsif a1 = a2 or a1=a3 or a2=a3 then
            put"Your triangle is iscoceles."
        elsif a1 not= a2 and a2 not= a3 then
            put "your triangle is scalene."
        end if
    else 
        put"The values you entered cannot form a triangle."
    end if
end triangle 

%main
var a1, a2,a3  : int
put "Please enter three angles to check for the nature of that triangle"
get a1, a2, a3
triangle(a1,a2,a3)
%can use array to get
