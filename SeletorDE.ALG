algoritmo "semnome"
var
   sexo, resp:caractere
   idade:inteiro
inicio
repita
   escreval("========================")
   escreva(" Qual o Sexo? [M/F] ")
   leia(sexo)
   escreva(" Qual a idade? ")
   leia(idade)
   escreval(" Qual a cor do cabelo? ")
   escreval("------------------------")
   escreval(" [1] Preto    ")
   escreval(" [2] Castanho ")
   escreval(" [3] Loiro    ")
   escreval(" [4] Ruivo    ")
   escreval(" ")
   leia(resp)
   escreva("Quer continuar? [S/N] ")
   leia(resp)
ate (resp="n") ou (resp="N")
Fimalgoritmo