programa
{
	/*Faça um programa que preencha um vetor com quinze elementos inteiros e verifique a existência de elementos
iguais a 30, mostrando as posições em que apareceram.*/
	funcao inicio()
	{
	const inteiro tam=15
	inteiro vetor[tam]
	inteiro qtd=0

	para(inteiro i=0; i<tam; i++){
		escreva("Digite o valor:\n")
		leia(vetor[i])
	}
	para(inteiro i=0; i<tam; i++){
		se(vetor[i]==30){
			escreva("\n", i/*+1 pro usuário ler na posição 1,2,3,4,5 inves de 0,1,2,3,4*/)
			qtd++
		}
	}
	se(qtd==0){
		escreva("\nNão há valores 30.")
	}senao{
		escreva("\nFoi encontrado ", qtd, " valores 30.")
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */