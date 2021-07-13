programa
{
	
	funcao inicio()
	{
		const inteiro size = 10
		inteiro num[size], i
		
		para(i=0; i<size; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}
		escreva("\nNÚMEROS PARES:")
		para(i=0; i<size; i++){
			se(num[i]%2==0){
				escreva("\nNúmero: ", num[i], " - Posição: ", i)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */