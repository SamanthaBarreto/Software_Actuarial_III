#Poner mi dirección de la carpeta donde trabajaré
setwd("C:/Users/escas/Documents/hospitales")
 #Declaración de la función
mejor <- function(state,resultado){
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
  outcome[conjuntoordenado[[2]],2]
  }
mejor("AL","ataque")
