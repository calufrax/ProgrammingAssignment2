## Put comments here that give an overall description of what your
## functions do

## create list containing functions to set and get Inverse
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        setInv <- function(y){
            x<<-y
            m<<-NULL
        }
        getInv<-function() x
        list(setInv = setInv, getInv = getInv)
}

## check if it's been solved, if not then set it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        m <- solve(x)
        x$setInv(m)
        m
}
