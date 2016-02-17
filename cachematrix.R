## functions to:
# calculate inverse of matrix and store it in a cache.
# retrieve inverse of matrix from cache

## given a matrix, create an object provides functions to:
# set the matrix 
# get the matrix 
# setinverse - set the inverse matrix in a cache
# getinverse - get the inverse matrix from the cache
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) {
        m <<- solve
    }
    getinverse <- function() {
        m
    }
        
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Return a matrix that is the inverse of 'x' 
# check for cached copy, if that doesn't exist calculate inverse matrix
# and store in cache within object
cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
