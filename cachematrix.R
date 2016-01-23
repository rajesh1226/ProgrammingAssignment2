## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	x_inverse<- NULL
	setMatrix<-function(y){
		x<<-y
		x_inverse <<- NULL
	}
	getMatrix<-function(){
		x
	}
	setMatrixInverse<-function(y_inverse){
		x_inverse<<- y_inverse
	}
	getMatrixInverse<-function()
	{
		x_inverse
	}
	list(setMatrix= setMatrix, getMatrix=getMatrix,
		setMatrixInverse=setMatrixInverse,
		getMatrixInverse= getMatrixInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	tmp_mat_inverse<-x$getMatrixInverse()
	if( !is.null(tmp_mat_inverse)){
		message("getting cached data")
		return(tmp_mat_inverse)
	}
	tmp_matrix<-x$getMatrix()
	tmp_matrix_inverse<-solve(tmp_matrix)
	x$setMatrixInverse(tmp_matrix)
	tmp_matrix_inverse
}
