algoritmo "semnome"
var
time:vetor[1..3]de caractere
i,p:inteiro
inicio
escreval("CAMPEONATO DE FUTEBOL")
escreval("")
para i <- 1 ate 3 faca
    escreva("Nome do",i,"° time: ")
    leia(time[i])
    i <- i + 1
fimpara
limpatela
escreval("- - - - - - - - - - ")
escreval("TABELA DE PARTIDAS")
escreval("- - - - - - - - - - ")
para i <- 1 ate 3 faca
     para p <- 1 ate 3 faca
       se (time[i]=time[p])entao
          escreva("")
       senao
          escreval(time[i]:15,"[ ] x [ ]":15,time[p])
       fimse
     fimpara
fimpara
fimalgoritmo