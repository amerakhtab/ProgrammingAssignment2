## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){ # reset value with a new matrix
                x <<- y
                m <<- NULL
        }
        get <- function() x # retrieve the value of matrix
        setinverse <- function(inverse) m <<- inverse # set the value of inverse
        getinverse <- function() m # retrieve the value of inverse
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        # gives the names, set, get, setinverse, getinverse to the functions repectively
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
