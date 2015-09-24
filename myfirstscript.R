myAbs <- function(x){
	return(abs(x))
}
myFactor <- function(x){
	factor <- 1
	for (i in 1:x){
		factor = factor*i
	}
	return(factor)
}

detMatrix <- function(x){
	if (nrow(x) != 2 || ncol(x) != 2) return(-1)
}

sumMatrix <- function(x){
	retorno = 0
	for (i in seq_len(nrow(x))){
		for (j in seq_len(nrow(x))){
			retorno = retorno + x[i,j]
		}
	}
	return(retorno)
}

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}



