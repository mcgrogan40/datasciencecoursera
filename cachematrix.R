## caching the inverse of a matrix can be costly
## computationally. These two functions
## cache the inverse of a matrix and limit computational
## requirements

## Cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) 
  {
    m<-NULL
    set<-function(y)
      {
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


## invert a matrix 

cacheSolve <- function(x, ...) 
  {
      m<-x$getmatrix()
      if(!is.null(m))
      {
        message("getting cached data")
        return(m)
      }
    matrix<-x$get()  
    ##function solve()) returns inverse of an invertible index
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
