## Put comments here that give an overall description of what your
## functions do
## COMMENTS HERE
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) minv <<- solveMatrix
  getInverse <- function() minv
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  minv <- x$getInverse()
  if (!is.null(minv)){
    message("Getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data)
  x$setInverse(minv)
  minv
}
