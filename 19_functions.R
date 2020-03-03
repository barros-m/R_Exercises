# functions

echo <-  function(s, x) print(paste(s, x))

echo("The value of PI is ", pi)

area <- function(text, b, h) print(paste(text, b*h))

area("The area of the square is ", 2, 3)



distance2D <- function(x1, y1, x2, y2)
{
  sqrt((x1-x2) ^ 2 + (y1-y2) ^ 2)
}

print(distance2D(0,1,1,0))