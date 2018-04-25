  #Declarar mi dirección de la carpeta como variable para mayor facilidad
directorio="C:/Users/escas/Documents/specdata"
  #Declaración de la función
mediacontaminante <- function(directorio , contaminante= "sulfate", id= 1:332){ 
  
  #Saber cual será el contaminante a evaluar 
    if (contaminante== "sulfate") { 
      col = 2
    } else {
      col = 3
    } 
  
  #Conteo y revisión de los archivos
    cases <- 0
    values <- 0
    
      for (i in id){
  #formatC se utilizó para poder tomar en formato de los archivos sin modificar el nombre y se pudieran revisar
        file <- formatC(i,width = 3,flag="0")
        complete <- paste(file,"csv",sep=".")
        review <- read.csv(complete) 
  #na.omit sirve parqa omitir los valores faltantes "NA" del archivo que este revisando
        cases <- length(na.omit(review[,col])) + cases
        values <- sum(review[,col],na.rm=TRUE) + values
      }
    
    prom <- values / cases
    prom
}

mediacontaminante(directorio,"nitrate",1:332)
