algoritmo "TorneioDeFutebol"
var
   nome: vetor[1..3] de caractere
   c, j, aux: inteiro
inicio
      escreval("-----------------------")
      escreval(" CAMPEONATO DE FUTEBOL ")
      escreval("-----------------------")
      para c <- 1 ate 3 faca
           escreva("Nome do",c,"° time: ")
           leia(nome[c])
      fimpara
      limpatela
      
      escreval("-----------------------")
      escreval(" CAMPEONATO DE FUTEBOL ")
      escreval("-----------------------")
      para c <- 1 ate 1 faca
           para j <- c+1 ate 3 faca
               escreval(nome[c]:12," [] x [] ",nome[j])
           fimpara
      fimpara
      para c <- 2 ate 2 faca
           para j <- c-1 ate 1 passo -1 faca
                escreval(nome[c]:12," [] x [] ",nome[j])
           fimpara
      fimpara
      para c <- 2 ate 2 faca
           para j <- c+1 ate 3 faca
               escreval(nome[c]:12," [] x [] ",nome[j])
           fimpara
      fimpara
      para c <- 3 ate 3 faca
           para j <- c-2 ate 2 faca
               escreval(nome[c]:12," [] x [] ",nome[j])
           fimpara
      fimpara
fimalgoritmo