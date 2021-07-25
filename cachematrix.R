## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
}
