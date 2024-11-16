algoritmo "semnome"
var
   v: inteiro
   resp: caractere
funcao parimpar(v : inteiro) :caractere
inicio
      se (v%2=0) entao
         retorne "par"
      senao
         retorne "impar"
      fimse
fimfuncao
inicio
      escreva("Digite um valor: ")
      leia(v)
      resp <- parimpar(v)
      escreva("O valor",v," é ",resp)
fimalgoritmo