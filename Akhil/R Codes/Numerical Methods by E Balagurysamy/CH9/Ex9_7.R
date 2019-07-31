#Example 7     Chapter 9       Page no.: 291

# Divided Difference Table

#Install and import 'rSymPy' Library
install.packages("rSymPy")
library("rSymPy")

#Given Data
mydata<- data.frame(i=c(0,1,2,3,4),
                    xi=c(1,2,3,4,5),
                    fx=c(0,7,26,63,124),
  stringsAsFactors = TRUE
)
mydata

divided.differences <- function(x, y, x0) {
  n <- length(x)
  q <- matrix(data = 0, n, n)
  q[,1] <- y
  f <- as.character(round(q[1,1], 5))
  fi <- ''
  
  for (i in 2:n) {
    for (j in i:n) {
      q[j,i] <- (q[j,i-1] - q[j-1,i-1]) / (x[j] - x[j-i+1])
    }
    fi <- paste(fi, '*(x - ', x[i-1], ')', sep = '', collapse = '')
    
    f <- paste(f, ' + ', round(q[i,i], 5), fi, sep = '', collapse = '')
  }
  
  x <- Var('x')
  sympy(paste('e = ', f, collapse = '', sep = ''))
  approx <- sympy(paste('e.subs(x, ', as.character(x0), ')', sep = '', collapse = ''))
  
  return(list( 
              'Interpolated Function ='=f, 
              'Divided Differences Table is'=q,
              'Approximated value from Interpolation is'=as.numeric(approx)))
}

#calculating value of f(1.5)
B=1.5
divided.differences(mydata$xi, mydata$fx, B)

# Obtained value and the value in the textbook differs slightly due Approximations.


