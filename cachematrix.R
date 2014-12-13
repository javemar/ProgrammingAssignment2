## This script create the especial function: "makeCacheMatrix" :
## When you call the "makeCacheMatrix" function you create a list with four functions. 
## Furthermore, into this environment you store a matrix (x variable) and its inverse matrix(inverse variable). 
## The inverse matrix at first will be a null value until you call the "cacheSolve" function.
## 
##
##
## The "cacheSolve" function need a "makeCacheMatrix" object as argument. Then, it will use the "getInverse" function.
## If this value isn't  null then "cacheSolve" will use the "getInverse" function that will return the cache value.
## If the value of "getInverse" is null then it  will use the "solve" function for find the inverse matrix.
## Next the "cacheSolve" will use the "setInverse" function of the "makeCacheMatrix" object to update the inverse variable.
## Finally "cacheSolve" will return the inverse matrix.




## Create the a "makeCacheMatrix", that is a list of four function with a x variable(matrix) and its inverse.

makeCacheMatrix <- function(x = matrix()) {

#
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) inverse <<- inv
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


#

}


## Calculate the inverse of matrix of a "makeCacheMatrix" object. x variable must be a "makeCacheMatrix" object.
## If the value is alredy available, then cacheSolve will not use "solve" function, saving time in the process.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        
        
        
        
        #
        
        
        
}
