programa
{
	
	funcao inicio()
	{
		inteiro numero
		logico condicao=verdadeiro

		faca{
			escreva("Digite um número: ")
			leia(numero)
			se(numero >= 1 e numero <= 4){
				escreva("\nVocê digitou o número ", numero)
				condicao=falso
			}senao{
				escreva("Entrada inválida!")
			}
		}enquanto(condicao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 159; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */