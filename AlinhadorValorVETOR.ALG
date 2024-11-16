algoritmo "semnome"
var
   vet: vetor[1..10] de inteiro
   c, j, aux:inteiro
inicio
      para c <- 1 ate 10 faca
           escreva("Digite o",c,"° valor: ")
           leia(vet[c])
      fimpara
      
      para c <- 1 ate 9 faca
           para j <- c+1 ate 10 faca
                se (vet[c] > vet[j]) entao
                   aux <- vet[c]
                   vet[c] <- vet[j]
                   vet[j] <- aux
                fimse
           fimpara
      fimpara
      
      para c <- 1 ate 10 faca
           escreva("[",vet[c]," ]")
      fimpara
fimalgoritmo