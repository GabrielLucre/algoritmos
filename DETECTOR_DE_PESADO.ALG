algoritmo "semnome"
var
   n, pesado: caractere
   p, mai: real
   i: inteiro
procedimento topo()
inicio
      limpatela
      escreval("----------------------------------")
      escreval(" D E T E C T O R  DE  P E S A D O ")
      escreval(" Maior Peso ate agora:",mai," kg  ")
      escreval("----------------------------------")
fimprocedimento
inicio
      topo()
      para i <- 1 ate 5 faca
           escreva("Digite o nome: ")
           leia(n)
           escreva("Peso de ",n,": ")
           leia(p)
           se (p>mai) entao
              mai <- p
              pesado <- n
           fimse
           topo()
      fimpara
      topo()
      escreval("A pessoa mais pesada foi ", pesado,", com",mai," quilos")
fimalgoritmo