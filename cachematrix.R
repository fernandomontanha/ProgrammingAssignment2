## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## First we need to set a value to the matrix, after that get a value to the same matrix
## We need to do the same to "setinverse" and "getinverse"in order to set and get the values


makeCacheMatrix <- function(x = matrix()) {
        invvar <- NULL
        set <- function(y) {
                x <<- y
                invvar <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invvar <<- inverse
        getinverse <- function() invvar
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## The code below skips the computation.

cacheSolve <- function(x, ...) {
        invvar <- x$getinverse()
        if(!is.null(invvar)) {
                message("getting cached data.")
                return(invvar)
        }
        data <- x$get()
        invvar <- solve(data)
        x$setinverse(invvar)
        invvar
}






