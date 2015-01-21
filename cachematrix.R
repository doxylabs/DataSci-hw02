# Matrix inversion, being a costly operation, is a great candidate for result
# caching. Here we have a couple of functions responsible for doing so.
#       -- Jason Herrick January 2015

# makeCacheMatrix --------------------------------------------------------- 

# This section contains the function makeCacheMatrix, a factory responsible for 
# creating and returning a vector with decorator functions to:

# 1. solve : Return the inverse of a supplied matrix, storing and calculating 
#            it the first time or if marked dirty, returning it on
#            subsequent calls.
makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    solve
}
