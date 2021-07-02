programa
{
/*Leia um conjunto de notas, cuja quantidade seja determinada pelo usuário. Calcule a média de todas elas.
 * Exiba o conjunto das notas maiores do que a média calculada.
 * Em seguida, de forma agrupada, exiba o outro conjunto de notas (menores do que a média).
*/
	
	funcao inicio()
	{
		inteiro i=0, qtd
		real notasTotal=0.0, media=0.0
		real nota[500] //coloquei um número grande para a pessoa poder cadastrar várias notas

		escreva("Digite a quantidade de notas que deseja cadastrar: ")
		leia(qtd)
		se(qtd > 500){
			escreva("Você não poderá cadastrar todas as notas. O programa suporta até 500 notas.\n\n")
		}
		
		para(i=0; i<qtd; i++){
			escreva("Digite a nota: ")
			leia(nota[i])

			notasTotal += nota[i]
		}
		
		media = notasTotal/qtd
		escreva("\nMédia das notas digitadas: ", media)

		escreva("\n\nNotas maiores que a média: ")
		para(i=0; i<qtd; i++){
            se(nota[i]>media){
                escreva(nota[i], " | ")
          }
		}
		
		escreva("\n\nNotas menores que a média: ")
		para(i=0; i<qtd; i++){
            se(nota[i]<media){
                escreva(nota[i], " | ")
            }
        }
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */