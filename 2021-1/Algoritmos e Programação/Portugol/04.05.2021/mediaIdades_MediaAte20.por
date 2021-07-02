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
			quantidade++ /*é a mesma coisa que (quantidade+1)*/
			media= soma/quantidade
			escreva("\nForam lidos: ", quantidade)
			escreva("\nA media é: ", media)
			
		}enquanto(media<=20 ou quantidade<2)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */