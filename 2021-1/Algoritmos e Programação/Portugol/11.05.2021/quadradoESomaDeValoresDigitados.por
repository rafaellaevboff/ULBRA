programa
{
/*Faça um programa que leia cinco valores reais e imprima o quadrado de cada um deles. Ao fim, imprima também o somatório dos cinco.
*/
	
	funcao inicio()
	{
		real valor=0
		inteiro acumulador=0
		inteiro contador=0

		faca{
			escreva("\nDigite um número:\n")
			leia(valor)
			contador++
			escreva("O quadrado desse número é: ", valor*valor)
			acumulador = acumulador + valor
		}enquanto(contador<5)
		escreva("\nA soma dos cinco números digitados é: ", acumulador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */