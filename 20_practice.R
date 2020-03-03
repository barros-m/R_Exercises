# area of a triangle
# a = distance2d(x1, y1, x2, y2) ....
# s = (a+b+c)/2
# area = (s(s-a)(s-b)(s-c))^(1/2)

distance2D <- function(x1, y1, x2, y2)
{
  sqrt((x1-x2) ^ 2 + (y1-y2) ^ 2)
}

print(distance2D(0,1,1,0))

calculateS <- function (a, b, c)
{
  s <- (a + b + c) /2
  s
}

calculateArea <- function(a, b, c, s)
{
  area <- sqrt(s*(s-a)*(s-b)*(s-c))
  area
}

calculateAreaOnPoints <- function(x1, y1, x2, y2, x3, y3) {
  a <- distance2D(x1, y1, x2, y2)
  b <- distance2D(x2, y2, x3, y3)
  c <- distance2D(x3, y3, x1, y1)
  
  s <-  calculateS(a, b, c)
  
  print(calculateArea(a, b, c, s))
}

calculateAreaOnPoints(0, 0, 0, 1, 1, 0)


print(distance2D(x1=1, y2=2, x2=0, y1=0))


distance2D2 <- function(x1=0, y1=0, x2=1, y2=1)
{
  sqrt((x1-x2) ^ 2 + (y1-y2) ^ 2)
}

print(distance2D2())


# Combinations

fact(n) <- function(n)
{
  if (n < 2) {
    return n
  }
  
  return n - 1
}