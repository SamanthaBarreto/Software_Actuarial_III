#Declarar mi dirección de la carpeta como variable para mayor facilidad
directorio="C:/Users/escas/Documents/specdata"
#Declaración de la función
completes <- function(directorio , id= 1:332){ 
  
  #Conteo y revisión de los archivos
  cases <- 0
  cases2 <- 0
  casescomplete <- 0
  
  for (i in id){
    #formatC se utilizó para poder tomar en formato de los archivos sin modificar el nombre y se pudieran revisar
    file <- formatC(i,width = 3,flag="0")
    complete <- paste(file,"csv",sep=".")
    review <- read.csv(complete)
    #na.omit sirve parqa omitir los valores faltantes "NA" del archivo que este revisando
    cases <- length(na.omit(review[,2])) 
    cases2 <- length(na.omit(review[,3]))
    if ((cases > 0) (cases2 > 0)){ 
      casescomplete = 1 + casescomplete
    }
    d <- data.frame(ID=1:332, CasesC= casescomplete)  
  }
  d
}

completes(directorio, 1:332)
