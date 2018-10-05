## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  getmat <- function(){
    x
  }
  setinverse <- function(inv) {
    inverse <<- inv
  }
  getinverse <- function() {
    inverse
  }
  return(list(getmat = getmat, setinverse = setinverse, getinverse = getinverse))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    message("getting cached inverse")
    return(inverse)
  }
  mat <- x$getmat()
  inverse <- solve(mat)
  x$setinverse(inverse)
  inverse
}
