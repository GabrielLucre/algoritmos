algoritmo "semnome"
var
   n, c, contdiv: inteiro
inicio
      c <- 1
      escreva("Digite um numero: ")
      leia(n)
      repita
         se (n%c=0) entao
            contdiv <- contdiv + 1
         fimse
         escreval(c)
         c <- c + 1
      ate (c>n)
      escreva("Ao todo existem", contdiv," divisores do numero",n)
      se (contdiv=2) entao
         escreva(" entao ele é primo!")
      senao
         escreva(" entao ele nao é primo!")
      fimse
fimalgoritmo