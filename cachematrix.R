## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    mat<-NULL
    set <- function(y) {
        x <<- y
        mat <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) mat <<- inverse
    getInv <- function() mat
    
    list(set=set,get=get,setInv=setInv, getInv=getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat  <- x$getInv()
    if (!is.null(mat)){
        message("getting cached data")
        return(mat)
    }
    data  <- x$get()
    mat  <- solve(data, ...)
    x$setInv(mat)
    mat
}
