algoritmo "semnome"
var
   alunos, cont:inteiro
   nome, nome1, nome2, melhor, pior:caractere
   nota, maior, menor, nota1, nota2:real
inicio
      escreva("Quantos alunos a turma tem? ")
      leia(alunos)
      escreval("------------------------------")
      cont <- 1
      enquanto (cont <= alunos) faca
               menor <- nota + 1
               escreval("ALUNO",cont)
               escreva("Nome do Aluno: ")
               leia(nome)
               escreva("Nota de ", nome,": ")
               leia(nota)
               escreval("------------------------------")
               se (nota > maior) entao
                  maior <- nota
                  nota1 <- maior
                  melhor <- nome
                  nome1 <- melhor
               fimse
               se (nota < menor) entao
                 menor <- nota
                 nota2 <- menor
                 pior <- nome
                 nome2 <- pior
               fimse
               cont <- cont + 1
      fimenquanto
      escreval("O melhor aproveitamento foi de ", melhor," com a nota",nota1)
      se (alunos > 1) entao
         escreva("e o pior foi de ", nome2," com a nota",nota2)
      fimse
fimalgoritmo