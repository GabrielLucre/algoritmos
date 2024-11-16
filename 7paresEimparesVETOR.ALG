algoritmo "semnome"
var
   v: vetor[1..7] de inteiro
   c, pares, impar: inteiro
inicio
      para c <- 1 ate 7 faca
           escreva("Digite o",c ,"° valor: ")
           leia(v[c])
           se (v[c]%2=0) entao
              pares <- pares + 1
           senao
              impar <- impar + 1
           fimse
      fimpara
      para c <- 1 ate 7 faca
           escreva("[",v[c]," ]")
      fimpara
      escreval("")
      escreva("Desses valores há",pares," numeros pares")
      escreval(" e",impar," impares")
      para c <- 1 ate 7 faca
           se (v[c]%2=0) entao
             escreval("Valor PAR na posição   ",c)
           senao
             escreval("Valor IMPAR na posição ",c)
           fimse
      fimpara
fimalgoritmo