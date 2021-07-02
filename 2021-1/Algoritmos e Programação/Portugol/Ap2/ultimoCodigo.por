programa
{
	/*Elabore um algoritmo que dada a idade de uma pessoa ele classifica-o em uma das seguintes categorias:
o   Menor de 16 anos - Não eleitor
o   Com 16 e menor de 18 anos – Eleito, com voto facultativo
o   Com 18 e menor de 70 anos – Eleito, com voto obrigatório
o   Com 70 ou mais– Eleitor, com voto facultativo
O programa deve encerrar ao digitar a idade 0. Ao fim deve ser mostrado o total de eleitores, o total de eleitores com 
votos obrigatório e os não eleitores.
*/
	funcao inicio()
	{
		inteiro idade=1, i=0, j=0, l=0, i_final

		faca{
			escreva("\nDigite sua idade: ")
			leia(idade)
		
		se(idade<16 e idade!=0){
			escreva("Não eleitor.\n")
			j++
		}senao se((idade>=16) e (idade<18)){
			escreva("Eleitor, com voto facultativo.\n")
		}senao se(idade>=70){
			escreva("Eleitor, com voto facultativo.\n")
		}senao se(idade>=18 e idade<70){
			escreva("Eleitor, com voto obrigatório.\n")
			l++
		}
		i++
		i_final= i-1
		}enquanto(idade!=0)
		
		escreva("\nA quantidade de eleitores é ", i_final, ".")
		escreva("\nA quantidade de votos obrigatórios é ", l, ".")
		escreva("\nA quantidade de não eleitores é ", j, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */