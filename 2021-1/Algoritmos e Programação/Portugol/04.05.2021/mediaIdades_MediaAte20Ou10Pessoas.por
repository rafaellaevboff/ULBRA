programa
{
	
	funcao inicio()
	{
		inteiro idade
		inteiro media=0
		inteiro soma=0
		inteiro quantidade=0

		faca{
			escreva("\nDigite a idade: ")
			leia(idade)
			soma=soma+idade
			quantidade++
			media=soma/quantidade
			escreva("\n Foram lidos: ", quantidade)
			escreva("\nA media é: ", media)

		}enquanto(media<=20 e quantidade<10) /*essa condição tem que ser verdadeira*/
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 120; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */