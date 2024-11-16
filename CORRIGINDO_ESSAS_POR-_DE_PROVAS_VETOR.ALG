algoritmo "semnome"
var
   gab: vetor[1..5] de caractere
   nome: vetor[1..3] de caractere
   resp: vetor[1..5] de caractere
   n: vetor[1..3] de inteiro
   naux: vetor[1..5] de inteiro
   c, cont: inteiro
   mt: real
inicio
      escreval("--------------------")
      escreval("      GABARITO      ")
      escreval("--------------------")
      para c <- 1 ate 5 faca
           escreva("Questao",c,": ")
           leia(gab[c])
      fimpara
      limpatela

      para c <- 1 ate 3 faca
           escreval("-------------------")
           escreval("ALUNO",c)
           escreval("-------------------")
           escreva("Nome: ")
           leia(nome[c])
           escreval("RESPOSTAS DADAS")
           para cont <- 1 ate 5 faca
                escreva("Questao",cont,": ")
                leia(resp[c])
                se (resp[c] = gab[c]) entao
                   naux[cont] <- naux[cont] + 2
                senao
                   naux[cont] <- 0
                fimse
           fimpara
           n[c] <- naux[1] + naux[2] + naux[3] + naux[4] + naux[5]

           limpatela
      fimpara
      mt <- (n[1]+n[2]+n[3])/3

      escreval("NOTAS FINAIS")
      escreval("-------------------")
      para c <- 1 ate 3 faca
           escreval(nome[c],n[c])
      fimpara
      escreval("-------------------")
      escreval("Media da turma: ",mt:2:2)
fimalgoritmo