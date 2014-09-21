## The program contains two functions. The first one is makeCacheMatrix which
## which creates a matrix object that can cache its inverse. The second function
## computes the inverse of the special "matrix" returned by makeCacheMatrix
## above. If the inverse has already been calculated (and the matrix has not
## changed), then it retrieves the inverse from the cache.

## makeCacheMatrix returns a list of functions. Two of these functions set(y)
## and setinverse() are used to feed the matrix and its inverse into the list.
## Once fed into the list, they can be retrieved using get() and getinverse().

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
## The set function allows us to input a new matrix to calculate the inverse
## without having to re-run makeCacheMatrix. It also reinitialises the
## cached inverse matrix to NULL whenever the matrix is changed.

        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## cacheSolve takes the previuos function as the input and returns the inverse
## of the matrix as output. If the inverse is available in cache it retrieves
## it from cache and if not, calculates the inverse using solve.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("Inverse is available in cache. Retrieving.....")
                return(i)
        }
        matrix <- x$get()
        i <- solve(matrix, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
