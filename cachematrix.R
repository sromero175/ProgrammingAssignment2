## It can be a very time consuming process to calculate the inverse of 
## a matrix, so once the matrix is created the inverse is cached in 
## case we need it again later.

## This function creates a special matrix which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- x$getinverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- inverse(data,...)
	x$setinverse(inv)
	inv
}


## This function checks whether the inverse of the matrix has been cached and, if so, 
## returns it or, if not, calculates the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- inverse(data,...)
	x$setinverse(inv)
	inv
}
