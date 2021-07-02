programa
{
	/*Faça um programa que preencha um vetor com dez números reais, calcule e mostre a quantidade de números
negativos e a soma dos números positivos desse vetor.*/
	
	funcao inicio()
	{
		const inteiro size = 10
		real vetor[size], soma=0.0
		inteiro qtdNegativo = 0
		
		para(inteiro x=0; x<size; x++){
			escreva("\nInforme o ", x + 1, "° valor: ")
			leia(vetor[x])
			
			se(vetor[x] < 0){
				qtdNegativo++
			}senao{
				soma += vetor[x]
			}
		}
		limpa()
		escreva("\nA quantidade de números negativos é: ", qtdNegativo)
		escreva("\nA soma dos positivos é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */