algoritmo "semnome"
var
   c, t1, t2, t3: inteiro
funcao proximofibonacci(var a, b, c:inteiro) : inteiro
inicio
   c <- a+b
   retorne c
   a <- b
   b <- c

fimfuncao
inicio
   T1 <- 0
   escreva(t1)
   t2 <- 1
   escreva(t2)
   para c <- 3 ate 10 faca
        c <- proximofibonacci(t1, t2, t3)
        escreva(c)
   fimpara
fimalgoritmo