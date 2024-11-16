algoritmo "semnome"
var
   m: vetor[1..4, 1..4] de inteiro
   l,c,sDP,psl,m3c,mai: inteiro
inicio
      sDP <- 0
      psl <- 1
      mai <- 1
      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                escreva("Digite o valor da Posicao [",l,",",c,"]: ")
                leia(m[l,c])
                se (l=c) entao
                   sDP <- sDP + m[l,c]
                fimse
                se (l=2) entao
                   psl <- psl*m[l,c]
                fimse
           fimpara
      fimpara
      para l <-1 ate 4 faca
           se (m[l,3] > mai) entao
              mai <- m[l,3]
           fimse
      fimpara
      
      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                se (l=c) entao
                  escreva(" {",m[l,c]:2,"} ")
                senao
                     se (l=2) entao
                        escreva(" [",m[l,c]:2,"] ")
                     senao
                        escreva("  ",m[l,c]:2,"  ")
                     fimse
                fimse
           fimpara
           escreval()
      fimpara
      
      escreval("A soma dos valores da diagonal principal e:",sdp)
      escreval("O produto dos valores da Segunda Linha e:",psl)
      escreval("O maior valor da 3°a Coluna e:",mai)
fimalgoritmo