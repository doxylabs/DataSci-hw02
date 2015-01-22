# Matrix inversion, being a costly operation, is a great candidate for result
# caching. Here we have a couple of functions responsible for doing so.
#       -- Jason Herrick January 2015

# makeCacheMatrix --------------------------------------------------------- 

# This section contains the function makeCacheMatrix, a factory responsible for 
# creating and returning a vector with decorator functions to:
# solve : Return the inverse of a supplied matrix, storing and calculating 
#         it the first time or if marked dirty, returning it on
#         subsequent calls.
makeCacheMatrix <- function(x = matrix()) {
    set<-function(y=matrix()){
        x <<- y # the parent value of x is set with set(y)
        m <<- NULL
    }
    get<-function() x # return x
    list(set=set,
         get=get
         )
}

x<-c(c(1,0,0),c(0,1,0),c(0,0,1))
mat<-makeCacheMatrix(x)
mat$get()
mat[["get"]]()
for( i in ls(mat) )    mat[[i]]()

# cacheSolve --------------------------------------------------------------

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    solve
}


