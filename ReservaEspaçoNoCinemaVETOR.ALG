algoritmo "semnome"
var
   resp, b: caractere
   c, reserv: inteiro
   resv: vetor[1..10] de inteiro
inicio
resv[1] <- 1
b <- "B"
para c <- 1 ate 10 faca
     resv[c] <- c
fimpara
repita
      para c <- 1 ate 10 faca
           se (resv[c]>0) entao
             escreva("[",b,resv[c]," ]")
           senao
             escreva("[---]")
           fimse
      fimpara
      escreval("")
      escreval("----------------------------------------------------------------------------")
      escreva("Reservar a cadeira: B")
      leia(reserv)
      se (resv[reserv]>0) entao
        resv[reserv] <- 0
        escreval("Cadeira B",reserv," RESERVADA!")
      senao
           escreval("ERRO: Lugar ja ocupado!")
      fimse
      escreval("Quer reservar outro? [S/N] ")
      leia(resp)
      limpatela
ate (resp = "n") ou (resp = "N")
escreval("Obrigado pela preferencia, tenha um bom filme!")
fimalgoritmo