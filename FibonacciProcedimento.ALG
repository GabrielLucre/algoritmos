algoritmo "semnome"
var
   c, t1, t2, t3: inteiro
procedimento proximofibonacci( a, b, c:inteiro)
inicio
   c <- a+b
   escreva(c)
   a <- b
   b <- c
fimprocedimento
inicio
   T1 <- 0
   escreva(t1)
   t2 <- 1
   escreva(t2)
   para c <- 3 ate 10 faca
        proximofibonacci(t1, t2, t3)
   fimpara
fimalgoritmo