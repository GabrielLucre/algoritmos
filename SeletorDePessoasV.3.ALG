algoritmo "semnome"
var
   sexo, resp:caractere
   idade:inteiro
   toth, totm:inteiro
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
   escreva(" ")
   leia(resp)
   se (sexo="M") ou (sexo="m") e (idade>18) e (resp="2") entao
      toth <- toth + 1
   fimse
   se (sexo="F") ou (sexo="f") e (idade>25) e (idade<30) e (resp="3") entao
      totm <- totm + 1
   fimse
   escreva("Quer continuar? [S/N] ")
   leia(resp)
   limpatela
ate (resp="n") ou (resp="N")
    escreval("-------------------------")
    escreval("     RESULTADO FINAL     ")
    escreval("-------------------------")
    escreval("Total de Homens com mais de 18 e cabelos castanhos:",toth)
    escreval("Total de Mulheres entre 25 e 30 e cabelos loiros:",toth)
Fimalgoritmo