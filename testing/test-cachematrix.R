## test-cachematrix 

#NOTE: the working directory is one level above this, so you don't need to source
#from ../ in RStudio. I'm sure this is different if you are running from Rscript
#on the cli.

source("cachematrix.R")
# no-output

x<-makeCacheMatrix(matrix(c(1,0,0,  0,1,0,  1,0,1),3,3))
# no-output

cacheSolve(x)
# [,1] [,2] [,3]
# [1,]    1    0   -1
# [2,]    0    1    0
# [3,]    0    0    1

cacheSolve(x)
# Returning cached inverse.
# [,1] [,2] [,3]
# [1,]    1    0   -1
# [2,]    0    1    0
# [3,]    0    0    1

x$set(matrix(c(1,0,0,  0,1,0,  0,0,1),3,3))
# no-output

cacheSolve(x)
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1

cacheSolve(x)
# Returning cached inverse.
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1
