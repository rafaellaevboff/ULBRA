programa
{
	/*Leia um conjunto de valores inteiros e em seguida os exiba-os na ordem inversa do que foram digitados.*/
	
	funcao inicio()
	{
		const inteiro size = 6
		inteiro valor[size], i=0

		para(i=0; i < size; i++){
			escreva("Digite um valor inteiro: ")
			leia(valor[i])
		}
		
		escreva("\nA ordem inversa dos valores digitados é: ")
		para(i=0; i < size; i++){
			escreva("\n", valor[(size-1)-i])
	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 192; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */