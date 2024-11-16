algoritmo "Aula 9 (ex.2)"
var
al,cont,nota,maior,n_empate:real
nome,melhor,empate:caractere
inicio
escreva("Quantos alunos têm na turma? ")
leia(al)
escreval("")
cont <- 1
melhor <- ("xxx")
maior <- 0
empate <- ("xxx")
n_empate <- 0
enquanto (cont<=al) faca
         escreval("Aluno ",cont)
         escreva("Nome do aluno: ")
         leia(nome)
         escreva("Nota de ",nome,": ")
         leia(nota)
         escreval(" ")

         se (nota>maior)entao
            maior<-nota
            melhor<-nome
//AGORA VEM A PARTE PARA DECIDIR SE CASO A NOTA QUE VIER TEM O MESMO VALOR QUE
//A VARIÁVEL 'MAIOR'. SE TIVER, A OUTRA VARIÁVEL 'N_EMPATE' VAI ADQUIRIR O NOME DA PESSOA
//E A SUA NOTA. ASSIM, PODE EXISTIR 2 VARIÁVEIS COM NOMES E NOTAS IGUAIS SEM
//DAR PROBLEMA.
         senao
              se (nota=maior)entao
              empate <- nome
              n_empate <- nota
              fimse
         fimse
         cont <- cont + 1
fimenquanto
//AQUI, CASO QUANDO HAVIA ANOTADO OS NOMES E AS NOTAS NO PROCESSO ANTERIOR TENHAM
//APARECIDO 2 ALUNOS COM NOTAS IGUAIS, O ALGORITMO VAI ESCREVER NA TELA O NOME DOS
//2 ALUNOS. CASO CONTRÁRIO, SE SÓ 1 ALUNO TEVE A MAIOR NOTA,
//ENTÃO SÓ O NOME DESTA PESSOA APARECERÁ.
se (n_empate=maior)entao
   escreva("Os melhores aproveitamentos foram de ",melhor," e ",empate," com as notas",maior,".")
senao
     escreva("O melhor aproveitamento foi de ",melhor," com a nota",maior,".")
fimse
fimalgoritmo