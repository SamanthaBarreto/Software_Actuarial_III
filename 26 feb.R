#Listas
x <- list(1,"a",TRUE,3+2i,5L)
x
x <- list(1,"a",TRUE,3+2i,5L,1:50)
x

#Matrices
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)
#Como llenar una matriz
m <- matrix(data=1:6,nrow = 2, ncol = 3)
m <- matrix(1:6,2,3)
m
#Se lleno automaticamente por columnas, pero si quiero que se llene por filas, entonces...
m <- matrix(data=1:6,nrow = 2, ncol = 3,byrow = TRUE)
m <- matrix(1:6,2,3,T)
m

#Creación de vector modificando sus dimensiones (creación de matrices)
m <- 1:10
m
dim(m) <- c(2,5)
m

#Crear matriz uniendo diferentes vectores
x <- 1:3
y <- 10:12
#CBind, une columnas
cbind(x,y)
#RBind, une filas
rbind(x,y)

#Factores
x <- factor(c("Si","Si","No","No","Si"))
x
x <- factor(c("azul","verde","verde","azul","rojo"))
x
table(x)
unclass(x)
x <- factor(c("azul","verde","verde","azul","rojo"),levels = c("rojo","amarillo","verde","naranja"))
x
#Factores con orden definido
x <- factor(c("azul","verde","verde","azul","rojo"),levels = c("rojo","amarillo","verde","azul"))
x
unclass(x)
#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor faltante detectado
is.nan(x) #Valor no numérico que no es faltante
y <- c(1,2,NaN,10,3)
is.na(y) #Valor faltante detectado
is.nan(y) #Valor no numérico que no es faltante

#Data frame
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

#Names
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
x
names(x)
m <- matrix(1:4,2,2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m
x <- list(a=1,b=2,c=3)
x
