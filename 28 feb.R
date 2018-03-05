#Lectura y escritura de datos
mtcars

# dput y dget

# 1. Creo el objeto
Carros <- data.frame(a=mtcars,b="a")
# 2. Estudio la manera en que se guardará
dput(Carros)
# 3. Lo guardo en mi disco duro
dput(Carros, file="~/GitHub/Software_Actuarial_III/Carros.R")
# 4. Genero un nuevo objeto a partir de la info guardada
CarrosSam <- dget(file="~/GitHub/Software_Actuarial_III/Carros.R")

CarrosSam