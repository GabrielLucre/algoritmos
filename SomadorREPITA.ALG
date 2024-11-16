algoritmo "semnome"
var
   n, soma, maior: real
   resp : caractere
   cont: inteiro
inicio
      cont <- 1
      repita
            escreva("Digite o", cont,"° numero: ")
            leia(n)
            cont <- cont + 1
            se (n > maior) entao
               maior <- n
            fimse
            soma <- soma + n
            escreva("Voce quer continuar? [S/N] ")
            leia(resp)
      ate (resp = "n") ou (resp = "N")
      escreval("A soma dos numeros digitados é", soma," e o maior")
      escreva("numero digitado foi o", maior)
fimalgoritmo