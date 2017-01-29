## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverso <- NULL
  set <- function(y) {
    x <<- y
    inverso <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverso <<- inverse
  getinverse <- function() invverso
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverso <- x$getinverse()
  if(!is.null(inverso)) {
    message("getting inverse.")
    return(inverso)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
