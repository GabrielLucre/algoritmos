algoritmo "semnome"
var
   r, d, c, n:real
inicio
      escreva("Quantas conver��es ser�o realizadas? ")
      leia(n)
      escreval("-------------------------------")
      c <- 1
      enquanto (c <= n) faca
              escreva("Qual o valor em R$? ")
              leia(r)
              d <- r/5.48
              escreval("O valor convertido � UR$",d:5:2)
              escreval("-------------------------------")
              c <- c + 1
      fimenquanto
fimalgoritmo