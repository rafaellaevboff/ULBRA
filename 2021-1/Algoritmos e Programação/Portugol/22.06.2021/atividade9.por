programa
{
	/*Faça um programa que preencha três vetores com dez posições cada um: o primeiro vetor, com os nomes de
dez produtos; o segundo vetor, com os códigos dos dez produtos; e o terceiro vetor, com os preços dos pro-
dutos. Mostre um relatório apenas com o nome, o código, o preço e o novo preço dos produtos que sofrerão aumento.
Sabe-se que os produtos que sofrerão aumento são aqueles que possuem código par ou preço superior a
R$ 1.000,00. Sabe-se ainda que, para os produtos que satisfazem as duas condições anteriores, código e
preço, o aumento será de 20%; para aqueles que satisfazem apenas a condição de código, o aumento será
de 15%; e para aqueles que satisfazem apenas a condição de preço, o aumento será de 10%.*/
	funcao inicio()
	{
		const inteiro size = 10
		cadeia produtosNome[size]
		inteiro produtosCodigo[size]
		real produtosPreco[size]

		para(inteiro i=0; i<size; i++){
			escreva("\nDigite nome do produto: ")
			leia(produtosNome[i])
			escreva("Digite o código do produto: ")
			leia(produtosCodigo[i])
			escreva("Digite o preço do produto: ")
			leia(produtosPreco[i])
			}
		
		para(inteiro i=0; i<size; i++){
			escreva("\n Nome do produto: "+ produtosNome[i])
			escreva("\n O código do produto: ", produtosCodigo[i])
			escreva("\n O preço do produto: ", produtosPreco[i])
			
			se(produtosCodigo[i] % 2 == 0 e produtosPreco[i]>1000){
				escreva("\n Novo valor do produto: ", produtosPreco[i]*1.20)
			}
			senao se(produtosCodigo[i] % 2 == 0){
					escreva("\n Novo valor do produto: ", produtosPreco[i]*1.15)
				}
			senao se(produtosPreco[i]>1000){
					escreva("\n Novo valor do produto: ", produtosPreco[i]*1.10)
				}
			senao{
				escreva("\n Este produto não sofre alteração!")
				}
			
			escreva("\n--------------------------------------------------")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 775; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */