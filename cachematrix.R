## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function receives a matrix as an input and store it in virtual memory
## The main function has four nested functions responsible of geting and setting the original matrix value.
## And to get and set the inverse matrix value.
## This function does not calculate the inverse.
## Following the example given by the assignment, the best way to pass the functions is using a list with key and values.
## Where the key is the name of the function and the value is the function itself.

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set_matrix_value <- function(matrix){
    x <<- matrix
    inv_matrix <<- NULL
  }
  get_matrix_value <- function() x
  set_inverse_matrix <- function(inverse) inv_matrix <<- inverse
  get_inverse_matrix <- function() inv_matrix
  list(
    set = set_matrix_value, 
    get = get_matrix_value,
    set_inverse_matrix = set_inverse_matrix,
    get_inverse_matrix = get_inverse_matrix
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## This function searches for a cached matrix and stores the value in inv_matrix
  ## You can access to the function get_inverse_matrix because cacheSolve has defined the "..." attribute.
  inv_matrix <- x$get_inverse_matrix()
  ## If there is no a cached matrix, the inv_matrix will be NULL.
  ## IF thre is a value, the function returns the value of inv_matrix
  if(!is.null(inv_matrix)) { 
    message("Getting the cached inverse matrix.")      
    return(inv_matrix)
  }
  ## If there is no a cached matrix, this function calculates the inverse using the solve function.
  data <- x$get()
  inv_matrix <- solve(data)
  ## This part stores the inverse of the matrix using the function set_inverse_matrix to avoid calculating the same value in the future.
  x$set_inverse_matrix(inv_matrix)
  ## The value of the inverse of the matrix is return.
  inv_matrix
}
