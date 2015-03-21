## Function caches a the inverse of a given matrix so that 
## - if the matrix has not yet been inverted, calculate and store inverse
## - if the matrix has been inverted, retrieve and send precalculated inverse
## Assumptions:
##    - matrix is invertible
##    - matrix does not change between uses of these functions.

## create list containing functions to set and get Inverse
## first try, based on example code 
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
## first try, based on example code
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
