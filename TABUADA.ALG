algoritmo "semnome"
var
   resp: caractere
   n, t, r: inteiro
inicio
      n <- 1
      escreva("Qual a tabuada do numero: ")
      leia(t)
      REPITA
            r <- n*t
            escreval(t,"  x ",n," = ",r)
            n <- n + 1
      ate (n > 10)
fimalgoritmo