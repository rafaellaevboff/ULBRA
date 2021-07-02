programa
{
/*Faça um programa para controlar o estoque de mercadorias de uma empresa. Inicialmente, o programa de-
verá preencher dois vetores com dez posições cada, onde o primeiro corresponde ao código do produto e o
segundo, ao total desse produto em estoque. Logo após, o programa deverá ler um conjunto indeterminado
de dados contendo o código de um cliente e o código do produto que ele deseja comprar, juntamente com a
quantidade. Código do cliente igual a zero indica fim do programa. O programa deverá verificar:
■■ se o código do produto solicitado existe. Se existir, tentar atender ao pedido; caso contrário, exibir
mensagem Código inexistente;
■■ cada pedido feito por um cliente só pode ser atendido integralmente. Caso isso não seja possível,
escrever a mensagem Não temos estoque suficiente dessa mercadoria. Se puder atendê-lo, escrever
a mensagem Pedido atendido. Obrigado e volte sempre;
■■ efetuar a atualização do estoque somente se o pedido for atendido integralmente;
■■ no final do programa, escrever os códigos dos produtos com seus respectivos estoques já atualizados.*/
	
	funcao inicio()
	{
		const inteiro size = 10
		
		cadeia produtos[size]
		inteiro estoque[size]
		inteiro cliente
		cadeia produto
		inteiro i = 0, quant
		logico achou = verdadeiro

		//cadastrar produtos e estoque
		para(i = 0; i<size; i++){
			escreva("Digite o produto: ")
			leia(produtos[i])

			escreva("Digite a quantidade no estoque: ")
			leia(estoque[i])
		}

		//pedidos clientes
		faca{
			achou = falso
	
			escreva("\n\nDigite o código cliente(0 para parar): ")
			leia(cliente)
	
			escreva("Digite o nome do produto que deseja comprar: ")
			leia(produto)
	
				para(i = 0; i < size; i++){
					se(produto == produtos[i]){
						achou = verdadeiro
					pare
					}
				}
				se(achou == falso){
					escreva("\n Produto não encontrado.\n")
				}
				
				se(achou == verdadeiro){
					escreva("Quantos ", produtos[i], "(s) você quer comprar? ")
					leia(quant)
					
					se(quant < estoque[i]){
						estoque[i] = estoque[i] - quant
						escreva("Pedido atendido. Obrigado e volte sempre.\n")
					}senao{
						escreva("Não temos estoque suficiente dessa mercadoria.\n")
					}
				}
		
				para(i = 0; i < size; i++){
					escreva("\nProduto ", produtos[i], " | Estoque: ", estoque[i], " unidades.")
				}
		}enquanto(cliente != 0)
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1144; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */