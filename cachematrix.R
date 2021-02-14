## Put comments here that give an overall description of what your
## functions do

## list of functions

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
        set <- function(y){
        x <<- y
        z <<- NULL
  }
        get <- function()x
        setInverse <- function(inverse) z <<- inverse
        getInverse <- function() z 
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

# to get or set a inverted matrix
cacheSolve <- function(x, ...) {
          z <- x$getInverse()
          if(!is.null(z)){
          message("Data cache")
          return(z)
}
          mat <- x$get()
          z <- solve(mat,...)
          x$setInverse(z)z
}
