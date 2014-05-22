## Put comments here that give an overall description of what your
## functions do
## Test comment-jilagan, 22 May 2014

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL

  set <- function(y) {
    x <<- y
    m <<- NULL
  }

  get <- function() x

  setinverse <- function(inverse) m <<- inverse 

  getinverse <- function() m

  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
        x$setinverse(m)
        message("return inverse")
        x$getinverse()
}

