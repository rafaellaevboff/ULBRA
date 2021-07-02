programa
{
/* Faça um programa que calcule a média de 5 números inteiros dados como entrada e imprima o resultado.*/
	
	funcao inicio()
	{
		inteiro valor=0
		inteiro somaDosNumeros=0
		inteiro contador=0
		real media
		
	
		faca{
			escreva("Digite um valor: ")
			leia(valor)
			somaDosNumeros= somaDosNumeros+valor
			contador++
			
		}enquanto(contador<5)
		
		media = somaDosNumeros/contador
		escreva("A média dos cinco números digitados é: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */