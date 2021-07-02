programa
{
	/*Faça um programa que receba o total das vendas de cada vendedor de uma loja e armazene-as em um vetor.
Receba também o percentual de comissão a que cada vendedor tem direito e armazene-os em outro vetor.
Receba os nomes desses vendedores e armazene-os em um terceiro vetor. Existem apenas dez vendedores na
loja. Calcule e mostre:
■■ um relatório com os nomes dos vendedores e os valores a receber referentes à comissão;
■■ o total das vendas de todos os vendedores;
■■ o maior valor a receber e o nome de quem o receberá;
■■ o menor valor a receber e o nome de quem o receberá.*/
	
	funcao inicio()
	{
		const inteiro size = 10
		real totalVendas[size]
		real percentual[size]
		cadeia vendedores[size]
		real totalDasVendas=0.0
		inteiro menor=0
		inteiro maior=0
		
		para(inteiro i=0; i<size; i++){
			escreva("\nDigite nome: ")
			leia(vendedores[i])
			escreva("Digite valor total de venda:")
			leia(totalVendas[i])
			totalDasVendas = totalVendas[i] + totalDasVendas
			escreva("Digite a comisssão: ")
			leia(percentual[i])

			se(percentual[menor]>percentual[i]){
				menor = i
			}
			se(percentual[maior]<percentual[i]){
				maior = i
			}
		}

		escreva("\n")
		para(inteiro i=0; i<size; i++){
			escreva("O vendedor ", vendedores[i], " deve receber comissão de ",percentual[i], "\n")
		}
			escreva("\nTotal das vendas: ", totalDasVendas)
			
			escreva("\n\nO vendedor com maior valor a receber é: ", vendedores[maior])
			escreva("\nO Valor é: ", percentual[maior])

			escreva("\n\nO vendedor com menor valor a receber é: ", vendedores[menor])
			escreva("\nO Valor é: ", percentual[menor])	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */