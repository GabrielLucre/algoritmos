algoritmo "semnome"
var
   i,f, cont:real
inicio
      escreva("Inicio: ")
      leia(i)
      escreva("Fim: ")
      leia(f)
      cont <- 0
      se (i < f) entao
         enquanto (cont <= f) faca
                  escreva(cont,"..")
                  cont <- cont + 1
         fimenquanto
      senao
         enquanto (i > cont) faca
                  escreva(i,"..")
                  i <- i - 1
         fimenquanto
      fimse
fimalgoritmo