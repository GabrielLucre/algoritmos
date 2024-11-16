algoritmo "semnome"
var
   cont: inteiro
   n, soma, maior: real
inicio
      cont <- 1
      enquanto (cont <= 10) faca
               escreva("Digite o", cont,"° numero: ")
               leia(n)
               se (n > maior) entao
                  maior <- n
               fimse
               cont <- cont + 1
               soma <- soma + n
      fimenquanto
      escreva("A soma dos numeros digitados é", soma)
      escreva(" e o maior numero foi o", maior)
fimalgoritmo