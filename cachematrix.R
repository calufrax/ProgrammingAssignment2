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

        ##function to set the inverse
        setInv <- function(y){
            x<<-y
            m<<-NULL
        }
 
        ## function to return inverse
        getInv<-function() x

        list(setInv = setInv, getInv = getInv)
}



## check if it's been solved, if not then set it
## first try, based on example code
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## First check for precalculated inverse
        m<-x$getInv()
        if(!is.null(m)) {
                ## precalculated inverse in cache, so return it and exit
                message("getting cached data")
                return(m)
        }
        ## if not precalculated, calculate, set, and return value.
        m <- solve(x)
        x$setInv(m)
        m
}
