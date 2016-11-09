##Specifically I am using solve() to find the inverse of a matrix and cache it using a free floating variable.

## The below function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## The below function calculates the inverse of the matrix created when the above function is executed.


cacheSolve <- function(x, ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
