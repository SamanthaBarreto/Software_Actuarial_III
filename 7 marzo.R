#Extracción de valores faltantes
airquality[1:6,]
complete.cases(airquality[1:6,])
completos <- complete.cases(airquality)
completos
data <- airquality[completos,]
data[1:6,]

#Al hacer una extracción de desde un vector de lógicos, me quedo solo con los valores que son TRUE en su evaluación

#Algunas operaciones
x <- 1:4; y <- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y
x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
y%*%x
#En multiplicación de matrices se pierde la conmutatividad

#Estructuras de control
  #If-Else
x=3
if(x>5)
{
  print("x es mayor a 5")
}else if (x<=10) {
  print("esta entre 1 y 5")
} else {
  print("x es menor a 5")
}

if(x>3) {
  y <- 10
} else { 
  y <- 0
}
y

y <- if(x>3){ 
  10
} else {
  0
}
y





