programa
{
/*Faça um programa que receba várias idades, calcule e mostre a média das idades digitadas. Finalize di-
gitando idade igual a zero.*/
	
	funcao inicio()
	{
		inteiro idade, i=0, contador=0
		real media
		
		faca{
			escreva("Digite sua idade: ")
			leia(idade)
		
			i++
			contador+=idade
		}enquanto(idade!=0)

		media= contador/(i-1) /*i-1 por que o i conta na vez que digita o zero e não quero que o 0 conte como idade*/
		escreva("\nMÉDIA DAS IDADES DIGITADAS: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */