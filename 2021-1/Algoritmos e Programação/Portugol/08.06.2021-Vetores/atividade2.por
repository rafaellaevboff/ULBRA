programa
{
	/*Uma pequena loja de artesanato possui apenas um vendedor e comercializa dez tipos de objetos. O vendedor recebe, mensalmente,
salário de R$ 545,00,acrescido de 5% do valor total de suas vendas.
O valor unitário dos objetos deve ser informado e armazenado em um vetor; a quantidade vendida de cada peça deve ficar em outro vetor,
mas na mesma posição. Crie um programa que receba os preços e as quantidades vendidas, armazenando-os em seus respectivos vetores
(ambos com tamanho dez). Depois, determine e mostre:
■■ um relatório contendo: quantidade vendida, valor unitário e valor total de cada objeto. Ao final,
deverão ser mostrados o valor geral das vendas e o valor da comissão que será paga ao vendedor; e
■■ o valor do objeto mais vendido e sua posição no vetor (não se preocupe com empates).*/

	funcao inicio()
	{
		inteiro qtd[10], i=0, maisVendido=0, j=0
		real valor[10], totalVenda[3], comissao=0.0, valorGeral=0.0, valorUnitario=0.0, valorCadaObj=0.0, salario=0.0, total=0.0

	
		para(i=0; i<10; i++){
			escreva("\nDigite a quantidade vendida do produto: ")
			leia(qtd[i])
				se(qtd[i] > maisVendido){
					maisVendido = qtd[i] //quem recebe fica do lado esquerdo
					j = i
				}
			escreva("Digite o valor: R$")
			leia(valor[i])

			totalVenda[i] = qtd[i] * valor[i]
			total += totalVenda[i]

			comissao += totalVenda[i] * 0.05 //+= dá pra fazer assim tbm 
		}

		salario = comissao + 545

		para(i=0; i<10; i++){
		escreva("--------------------")
		escreva("\nObjeto " + (i + 1))
		escreva("\nQuantidade vendida: ", qtd[i])
		escreva("\nValor total de cada objeto: R$", valor[i])
		escreva("\nValor total de cad venda: R$", totalVenda[i])
		}
		
		escreva("\n\nSalário: ", salario)
		escreva("\nValor geral das vendas: R$", total)
		escreva("\nValor da comissão paga ao vendedor: R$", comissao)
		escreva("\nValor do objeto mais vendido e sua posição no vetor: R$", maisVendido, " ", j)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */