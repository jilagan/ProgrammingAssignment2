## Put comments here that give an overall description of what your
## functions do
## Test comment-jilagan, 22 May 2014

## Write a short comment describing this function
## Patterned functions after the examples given in the assignment

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL

  # Sets a new matrix (and clears the cache)
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

  ## Return the actual (original) matrix
  get <- function() x

  ## Note that inverse ("solve") is performed in the cacheSolve function below
  setinverse <- function(inverse) m <<- inverse 

  ## Return the (cached) inverse matrix
  getinverse <- function() m

  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## Computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (ant the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	## Note: to test the condition that this is not cached, explicitly call the set() function of the special matrix.
        message("check if cached...")
        m <- x$getinverse()

        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }

        message("get data...")
        data <- x$get()
        message("get inverse (solve)")
        m <- solve(data)
        message("set inverse")

	## Set and cache the inverse
        x$setinverse(m)

	## Return the inverse
        message("return inverse")
        x$getinverse()
}

