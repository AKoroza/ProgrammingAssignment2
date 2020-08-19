## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The function below "makeCacheMatrix" creates matrix ##

makeCacheMatrix <- function(x = matrix()) {
  
  p<-NULL
  set<-function(y){
    x<<-y
    p<<-NULL
  }
get<-function()x
setinverse<-function(inverse)p<<-inverse
getinverse<-function()p
list(set=set,
     get=get,
     setinverse=setinverse,
     getinverse=getinverse)}


## Write a short comment describing this function
## cacheSolve calculates the inverse of the matrix returned by makecacheMatrix ##

cacheSolve <- function(x, ...) {
  p<-x$getinverse()
  if(!is.null(p)){
    message("cached data matrix")
    return(p)}
  data<-x$get()
  p<-solve(data,...)
x$setinverse(p)
p}

