algoritmo "semnome"
var
   nome: caractere
   soc: vetor[1..10] de caractere
   c, totc: inteiro
inicio
      para c <- 1 ate 10 faca
           escreva("Digite seu nome: ")
           leia(nome)
           se (copia(maiusc(nome), 1, 1) = "C") entao
              totc <- totc + 1
              soc[totc] <- nome
           fimse
      fimpara
      limpatela
      escreval("LISTAGEM FINAL")
      escreval("------------------")
      para c <- 1 ate totc faca
           escreval(soc[c])
      fimpara
fimalgoritmo