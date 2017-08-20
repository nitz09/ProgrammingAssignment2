## Put comments here that give an overall description of what your
## functions do

## Function that caches a matrix and its inverse and return these information in a list.

makeCacheMatrix <- function(x = matrix()) {
minv<-NULL

## set the value of matrix
set <- function(m) 
	{
	x <<- m
	minv <<- NULL
	}

## get the value of matrix
get <- function() x

##set the value of inverse
setInverse <- function(inverse){minv <<- inverse}

##get the the value of inverse
getInverse <- function() minv

## function returns a list 
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Function computes the inverse of the matrix. If thats already done(and the matrix has not changed), the function will retrieve inverse from cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        minv <- x$getInverse
         
         ## function to get cached matrix
         if(!is.null(minv)){
         	message("getting cache data")
         	return(minv)
         }
         data <- x$get()
         mcache <- solve(data,...)
         x$setInverse(mcache)
         mcache         
}
