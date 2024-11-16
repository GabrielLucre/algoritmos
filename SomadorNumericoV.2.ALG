algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
var
   cont: inteiro
   n, soma, maior, menor: real
inicio
      cont <- 1
      enquanto (cont <= 10) faca
               escreva("Digite o", cont,"° numero: ")
               leia(n)
               se (n > maior) entao
                  maior <- n
               fimse
               se (n < menor) entao
                  menor <- n
               fimse
               cont <- cont + 1
               soma <- soma + n
      fimenquanto
      escreva("A soma dos numeros digitados é", soma)
      escreva(", o maior numero foi o", maior," e o menor",menor)
fimalgoritmo