algoritmo "semnome"
var
   n1, n2: inteiro
   r: caractere
funcao parimpar(n1,n2:inteiro) : caractere
inicio
      se (n1%2=0) e (n2%2=0) entao
         retorne "pares"
      senao
           se (n1%2=1) e (n2%2=1) entao
              retorne "impares"
           senao
                se (n1%2=0) e (n2%2=1) entao
                   retorne "par e impar, respectivamente"
                senao
                   retorne "impar e par, respectivamente"
                fimse
           fimse
      fimse

fimfuncao
inicio
      escreva("Digite um valor: ")
      leia(n1)
      escreva("Digite outro valor: ")
      leia(n2)
      r <- parimpar(n1, n2)
      escreva("Os numeros", n1," e", n2," sao ",r," ;)")
fimalgoritmo