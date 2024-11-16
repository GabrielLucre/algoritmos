algoritmo "semnome"
var
   m: vetor[1..3, 1..3] de inteiro
   l,c, totp, sp: inteiro
inicio
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                escreva("Digite o valor na posicao [",l,",",c,"]: ")
                leia(m[l,c])
           fimpara
      fimpara
      
      totp <- 0
      escreval("MTRIZES: ")
      escreval("------------------")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                se (m[l,c]%2=0) entao
                  escreva(" {",m[l,c],"} ")
                  totp <- totp + 1
                  sp <- sp + m[l,c]
                senao
                  escreva("  ",m[l,c],"  ")
                fimse
           fimpara
           escreval("")
      fimpara
      escreva("Os valores pares sao:")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                se (m[l,c]%2=0) entao
                  escreva(m[l,c])
                fimse
           fimpara
      fimpara
      escreval()
      escreval("O numero total de pares foi:",totp)
      escreval("A soma entre eles resulta em:",sp)
fimalgoritmo