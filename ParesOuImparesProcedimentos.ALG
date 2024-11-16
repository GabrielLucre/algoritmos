algoritmo "semnome"
var
   x, y: inteiro
procedimento parimpar(a, b:inteiro)
inicio
   se (a%2=0) e (b%2=0) entao
      escreva(a," e",b," sao pares")
   senao
      se (a%2=1) e (b%2=1) entao
         escreva(a," e",b," sao impares")
      senao
         se (a%2=0) entao
            escreva(a," e par e",b," impar")
         senao
            se (a%2=1) entao
               escreva(a," e impar e",b," par")
            fimse
         fimse
      fimse
   fimse
fimprocedimento
inicio
   escreva("Digite um numero: ")
   leia(x)
   escreva("Digite outro nuero: ")
   leia(y)
   parimpar(x,y)
fimalgoritmo











