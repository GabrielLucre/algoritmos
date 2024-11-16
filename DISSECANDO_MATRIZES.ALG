algoritmo "semnome"
var
   m: vetor[1..4, 1..4] de inteiro
   l,c,r: inteiro
inicio
      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                escreva("Digite o valor da Posicao [",l,",",c,"]: ")
                leia(m[l,c])
           fimpara
      fimpara
      limpatela

repita
      escreval("===================")
      escreval("MENU DE OPCOES")
      escreval("===================")
      escreval("[1] Mostrar a Matriz")
      escreval("[2] Diagonal Principal")
      escreval("[3] Triangulo Superior")
      escreval("[4] Triangulo Inferior")
      escreval("[5] Sair")
      escreva("============ OPCAO: ")
      leia(r)
      escolha r
              caso 1
                   limpatela
                   para l <- 1 ate 4 faca
                        para c <- 1 ate 4 faca
                             escreva(m[l,c]:4)
                        fimpara
                        escreval()
                   fimpara
              caso 2
                   limpatela
                   para l <- 1 ate 4 faca
                        para c <- 1 ate 4 faca
                             se (l=c) entao
                                escreva(m[l,c]:4)
                             senao
                                escreva("    ")
                             fimse
                        fimpara
                        escreval()
                   fimpara
              caso 3
                   limpatela
                   para l <- 1 ate 4 faca
                        para c <- 1 ate 4 faca
                             se (l=c) ou (l>c) entao
                                escreva("    ")
                             senao
                                escreva(m[l,c]:4)
                             fimse
                        fimpara
                        escreval()
                   fimpara
              caso 4
                   limpatela
                   para l <- 1 ate 4 faca
                        para c <- 1 ate 4 faca
                             se (l=c) ou (l<c) entao
                                escreva("    ")
                             senao
                                escreva(m[l,c]:4)
                             fimse
                        fimpara
                        escreval()
                   fimpara
              caso 5
                   limpatela
                   escreva("ENCERRANDO...")
      fimescolha
ate (r=5)
fimalgoritmo

1,1  1,2  1,3  1,4
2,1  2,2  2,3  2,4
3,1  3,2  3,3  3,4
4,1  4,2  4,3  4,4

l > c
l < c