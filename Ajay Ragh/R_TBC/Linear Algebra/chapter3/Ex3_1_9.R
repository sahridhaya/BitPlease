#Example 1.9,Section I. page 170
#space P5 of polynomials of degree 5 or less and the map f that sends a polynomial p(x) to p(x - 1).
#under this map x^2 ->(x-1)^2 = x^2-2x+1 and x^3+2x -> (x-1)^3+2(x-1) = x^3-3x^2+5x-3.
curve(x^2,from = -1000,to=1000)
curve((x-1)^2,from = -1000,to=1000)
curve(x^3,from = -1000,to=1000)
curve((x-1)^3,from = -1000,to=1000)
#from these plots we can say that this map is an automorphism of this space.