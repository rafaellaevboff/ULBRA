programa
{
/*3- Faça um programa que lê três números diferentes e mostra na tela uma mensagem indicando qual é a soma dos valores e a média.
 Caso a média seja maior que 20 mostrar a mensagem "SOMA MAIOR QUE 20"*/
	
	funcao inicio()
	{
		real num, media=0.0, acumulador=0.0
		inteiro i=0
		
		faca{
			escreva("Digite um número: ")
			leia(num)

			acumulador+=num

			i++
		}enquanto(i<3)

		media= acumulador/i

		escreva("\nA soma dos números digitados é: ", acumulador)
		escreva("\nA média é: ", media)
		
		se(media>20){
			escreva("\nMEDIA MAIOR QUE 20")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */