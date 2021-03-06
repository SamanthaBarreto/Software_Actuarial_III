#Dump y Source
#setwd("~/GitHub/Software_Actuarial_III"")
x <- "Programaci�n Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")

#dump y source trabajan con las instrucciones de c�digo que permitir�n volver a construir un objeto en lugar de obtenerlo desde alguna ubicaci�n guardada.

#conexiones
str(file)
con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)
x
writeLines(readLines(con), "FCFM.txt")
x[7] <- "t<title>FCFM:Estariamos mejor con otro director en la facultad</title>"
writeLines(x,"FCFM.html")

#Creamos un vector
x <- c("a","b","c","c","d","e")
#Veamos el vector
x
#Extraemos elementos con []
x[1]
x[2]
#Tambi�n podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una resttricci�n
x[x>"b"]
#De manera equivalente se obtener un vector l�gico
u <- x == "c"
u
x[u]

#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1]
#El resultado es una lista que contiene al vector de la secuencia 
x[[1]]
#El resultado es el vector de la secuencia de n�meros
x$foo
#El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6,baz="Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1 s�, 2 no, 3 s�
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos 
#Primero extrae el 1er elemento y de ah� extrae la 3ra posici�n

name <- "baz"
x[name]
x[[name]]
x$name
#Si quiero realizar extracciones con el signo $, debo escribir el nombre del objeto que quiero extraer, ya que no es capaz de realizar evaluaciones 

#Se pueden extraer elementos de los elementos extraidos
x <- list(a = list(10,12,14),b = list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

x <- matrix(1:6,2,3)
x
#El resultado es un vector
    x[1,2]
    #Con drop = false, se mantiene la dimensi�n y el resultado ser� una matriz
    x[1,2,drop=FALSE]
x[2,1]
#Si dejamos solamente el espacio, el resultado ser� un vector
    x[1,]
    #Si usamos drop = falsa, el resultado ser� una matriz
    x[1,,drop=FALSE]
x[,2]

x <- list(aar = 1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]