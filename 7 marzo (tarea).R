#caminata aleatoria 
newvector <- 
  set.seed(1)
z <- 5
contador <- 0
  while (z>=3 && z <=10) {
    newvector <- c(newvector,z)
    print(z)
    moneda <- rbinom(1,1,0.5)
    if (moneda==1) {
      z <- z+1
    } else {
      z <- z-1
    }
    contador <- contador +1 
  }
newvector
contador