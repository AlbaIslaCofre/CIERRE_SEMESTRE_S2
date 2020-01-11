
############################
########EJERCICIO 1 ########
############################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),100,replace=TRUE)
#Contando los Positivos#
n_positivos<-0
for (i in 1:length(Ejemplos)){
  if("Positivo"==Ejemplos[i]){n_positivos<-n_positivos+1}
}
# Negativos#
n_negativos<-0
for (i in 1:length(Ejemplos)){
  if("Negativo"==Ejemplos[i]){n_negativos<-n_negativos+1}
}
#Neutros#
n_neutros<-0
for (i in 1:length(Ejemplos)){
  if("Neutros"==Ejemplos[i]){n_neutros<-n_neutros+1}
}
#sumatoria igual a 100#
TOTAL<-n_negativos+n_positivos+n_neutros

########################
#####EJERCICIO 2 #######
########################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),10,replace=TRUE)
set.seed(10)
#########################
#######EJERCICIO 3 ######
#########################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),10,replace=TRUE)
set.seed(66)
#  Uso de ejercicio 1- positivos, negativos y neutros
Porcentajes_incluye_neutros<-c(n_negativos/TOTAL,n_positivos/TOTAL,n_neutros/TOTAL)
Porcentajes_no_neutros<-c(n_negativos/(TOTAL-n_neutros),n_positivos/(TOTAL-n_neutros))
#########################
##### EJERCICIO 4########
#########################
##### EJERCICIO 5########
#########################
Cartas_Sacadas=sample(c("A",2:10,"J","Q","K"),31,replace=TRUE)
set.seed(31)
Cuenta<-0
for (i in 1:length(Cartas_Sacadas)){
  if(Cartas_Sacadas[i]==2|Cartas_Sacadas[i]==3|Cartas_Sacadas[i]==4|Cartas_Sacadas[i]==5|Cartas_Sacadas[i]==6) {
    Cuenta<-Cuenta+1 } else if (Cartas_Sacadas[i]=="A"|Cartas_Sacadas[i]=="J"|Cartas_Sacadas[i]=="Q"|Cartas_Sacadas[i]=="K"|Cartas_Sacadas[i]==10){
      Cuenta<-Cuenta-1} else if (Cartas_Sacadas[i]==7|Cartas_Sacadas[i]==8|Cartas_Sacadas[i]==9){
        Cuenta<-Cuenta+0
      }
}
#vARIABLE FORD.
mas1<-c(2:6)
menos1<-c("A","J","Q","K",10)
neutros<-c(7:9)
cuenta2<-0
variable<-mas1
for (i in 1:length(Cartas_Sacadas)){ for (n in 1:length(variable)){
  if(Cartas_Sacadas[i]==mas1[n]){cuenta2<-cuenta2+1}}
  variable<-menos1
  for(n in 1:length(variable)){
    if(Cartas_Sacadas[i]==menos1[n]){cuenta2<-cuenta2-1}
  }
}
###################
###EJERCICIO 6######
#####################
#PAQUETE#
install.packages("tidyverse")
install.packages("tokenizers")
library(tidyverse)
library(tokenizers)
#creae texto#
Diario_Mayimbu<- paste("Me encanta el chocolate")
Diario_Bolocco<- paste("El chocolate no permite tener buena digestión")
palabras <- tokenize_words(Diario_Mayimbu)
palabras
#[[1]]
#[1] "me"        "encanta"   "el"        "chocolate"
palabras <- tokenize_words(Diario_Bolocco)
palabras
#[[1]]
#[1] "el"        "chocolate" "no"        "permite"   "tener"    
#[6] "buena"     "digest

length (palabras[1])

  tabla <- table(palabras[[1]])
  tabla <- data_frame(palabra = names(tabla), recuento = as.numeric(tabla))
  tabla
  #  <chr>        <dbl>
 # 1 buena            1
 # 2 chocolate        1
 # 3 digestión        1
 # 4 el               1
 # 5 no               1
 # 6 permite          1
 # 7 tener            1#
  
  metadatos <- data_frame (("Me encanta el chocolate"), ("El chocolate no permite tener buena digestión"))
 metadatos
 writeLines(as.character(Diario_Mayimbu[[1]]))
 writeLines(as.character(Diario_Bolocco[[2]]))
 writeLines
