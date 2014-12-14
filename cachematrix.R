## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will calculate the inverse matrix of x
## get: It can get the matrix
## set: reset the matrix
## calinv: calculate hte inverse matrix of x
## getinv: get the inverse matrix of x
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL						# attribute inverse

	set <- function(x_new) {
		x <<- x_new					# set attribute x = NULL
		inv <<- NULL					# set attribute inv = NULL
	}

	get <- function() {
		x						# get matrix x
	}

	setinv <- function(i) {
		inv <<- i					# set inverse matrix
	}

	getinv <- function() {
		inv						# get inverse matrix
	}

	list(set = set, get = get, calinv = calinv, getinv = getinv)
}


## Write a short comment describing this function
## It check whether the inverse matrix has been calculated already
## otherwise, it calculates the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()
	if (!is.null(inv)) {
		message("getting cached data")
		return inv
	}

	matrix <- x$get()
	inv <- solve(matrix)
	x$setinv(inv)

	inv
}
