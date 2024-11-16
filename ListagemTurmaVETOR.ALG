algoritmo "semnome"
var
   nome: vetor[1..4] de caractere
   n1: vetor[1..4] de real
   n2: vetor[1..4] de real
   m: vetor[1..4] de real
   c, tot: inteiro
   mt, sm: real
inicio
      para c <- 1 ate 4 faca
           escreval("ALUNO",c)
           escreva("Nome: ")
           leia(nome[c])
           escreva("Primeira Nota: ")
           leia(n1[c])
           escreva("Segunda Nota: ")
           leia(n2[c])
           escreval("")
           m[c] <- (n1[c]+n2[c])/2
           sm <- sm + m[c]
      fimpara
      mt <- sm/4
      limpatela
      
      escreval("-------------------")
      escreval(" ISTAGEM DE ALUNOS ")
      escreval("-------------------")
      para c <- 1 ate 4 faca
           escreval(nome[c]:12,m[c]:3:2)
           se (m[c]>mt) entao
              tot <- tot + 1
           fimse
      fimpara
      escreval("Ao todo temos",tot," possoas acima da media da turma, que é ",mt:5:2)
fimalgoritmo