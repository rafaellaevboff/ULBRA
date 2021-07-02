programa
{
	
	funcao inicio()
	{
		
		inteiro valor=0
		inteiro soma=0
		inteiro media=0
		inteiro quantidade=0

		faca{
			escreva("\nDigite um número: ")
			leia(valor)
			se(valor!=-99){
				soma=valor+soma
				quantidade++
			}	
		}enquanto(valor!=-99)
		
		media=soma/quantidade
		escreva("\nSoma: ", soma)
		escreva("\nMedia: ", media)
		escreva("\n Quantidade: ", quantidade)
		
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