# Matrix inversion, being a costly operation, is a great candidate for result
# caching. Here we have a couple of functions responsible for doing so.
#       -- Jason Herrick January 2015

library(digest)

# makeCacheMatrix --------------------------------------------------------- 


# This section contains the function makeCacheMatrix, a factory responsible for 
# creating and returning a vector with decorator functions to:
# solve : Return the inverse of a supplied matrix, storing and calculating 
#         it the first time or if marked dirty, returning it on
#         subsequent calls.

makeCacheMatrix <- function(x = matrix()) {
    hsh<-digest(NULL) # store the hash of the matrix passed to me in case it changes
#     dir(hsh)
#     h=digest("abc")
#     if(hsh!=h) print("ok")
    set<-function(y=matrix())
        x <<- y # the parent value of x is set with set(y)
    
    get<-function()        x # return x
    
    getHash<-function()        return(hsh) # return the hash

    setHash<-function(h=character())        hsh <<- h
    
    list(set=set,
         get=get,
         getHash=getHash,
         setHash=setHash
    )
}


# cacheSolve --------------------------------------------------------------


# This function computes the inverse of the special "matrix" returned by
# makeCacheMatrix above. If the inverse has already been calculated (and the
# matrix has not changed), then cacheSolve should retrieve the inverse from the
# cache.

cacheSolve <- function(x, ...) {
    if( makeCacheMatrix$getHash() != digest(x) )
    {
        makeCacheMatrix$setHash(digest(x))
        makeCacheMatrix$set(solve(x))
    }
    return (makeCacheMatrix$get())
}


