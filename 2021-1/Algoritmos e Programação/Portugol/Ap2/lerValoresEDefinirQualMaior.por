programa
{

/*9.	Solicitar a leitura de um número indefinido de valores inteiros, a leitura chega ao final quando a soma dos números lidos for 
 * igual a 20. Mostrar ao final qual o maior valor lido*/
	
	funcao inicio()
	{
		inteiro num, soma=0, maiorNum=0

		faca{
		escreva("Digite um número: ")
		leia(num)
		
		soma+=num
		
		se(maiorNum<num){
			maiorNum=num
		}
		}enquanto(soma<20)

		escreva("O maior valor lido foi ", maiorNum)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */