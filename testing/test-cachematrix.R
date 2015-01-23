## test-cachematrix

source("hw02/cachematrix.R")
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
