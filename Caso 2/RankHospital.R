#Poner mi direcci�n de la carpeta donde trabajar�
setwd("C:/Users/escas/Documents/hospitales")
#Declaraci�n de la funci�n
rankhospital <- function(state,resultado,num="mejor"){
  conjunto <- 0
  conjuntoordenado <- 0
  outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  if (!resultado =="ataque" && !resultado =="falla" && !resultado =="neumonia" ){
    stop("Resultado invalido")
  }
  if(resultado=="ataque"){
    col=11
  }
  else if(resultado=="falla"){
    col=17
  }
  else if(resultado=="neumonia"){
    col=23
  }
  outcome[,col] <- as.numeric(outcome[,col])
  for (i in 2:4707) {
    if (state==outcome[i,7]){
      conjunto <- c(conjunto,outcome[i,col])
      conjuntoordenado <- order(conjunto)
      if (!state==outcome[i,7]){
        break  
      }
    }
  }  
  conjunto
  conjuntoordenado
  pos <- num+1
  outcome[conjuntoordenado[[num]],2]
}
rankhospital("AL","ataque",3)
