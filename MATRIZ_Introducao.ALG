algoritmo "semnome"
var
   m: vetor[1..3, 1..2] de inteiro
   l,c: inteiro
inicio
      para l <- 1 ate 3 faca
           para c <- 1 ate 2 faca
                escreva("Digite o valor na posicao [",l,",",c,"]: ")
                leia(m[l,c])
           fimpara
      fimpara
      
      para l <- 1 ate 3 faca
           para c <- 1 ate 2 faca
                escreva(m[l,c])
           fimpara
           escreval()
      fimpara
fimalgoritmo