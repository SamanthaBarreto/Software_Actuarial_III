#dar valor a variables
x <- 1
#dar valor a variables
x <-2
#imprimir el valor de la variable 
print(x)
#imprimir el valor de la variable 
x
#dar valor a variables
msg <- "Hola"
#imprimir el valor de la variable 
print(msg)
# los : son para una secuencia de números
x <- 1:20
x
y <- 3:9
y
z <- 99:43
z
#no toma los decimales en cuenta
w <- 3:14.5
w

attributes(z)

x <- c(TRUE,FALSE,TRUE, TRUE,F,F,T) #logical
x
x <- c(1L,3L,5L,-4L) #integer
x
x <- c(1,3,5,-4) #numeric
x
x <- c(1+1i,3+4i,-5-6i,3.14-1.618i) #complex
x
x <- c("a","b","c","hola","Mundo") #character
x
x <- vector("numeric",length =10)
x 
#coerción
y <- c(1.7,"a") #character
y <- c(TRUE,2) #numeric
y <- c(TRUE,2L) #integer
y <- c(TRUE,2L,2) #numeric
y <- c(FALSE,2L,5,5+4i) #complex
y
y <- c(TRUE,1)
y
#coerción forzada
x <- 0:6  #integer
as.numeric(x) #numeric
as.logical(x) #logical Los 0 se vuelven False y los demás True
as.character(X) #character Todo es letra
#errores de la coerción forzada
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.character(x)