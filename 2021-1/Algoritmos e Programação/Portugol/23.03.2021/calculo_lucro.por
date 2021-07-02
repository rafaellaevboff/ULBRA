programa
{
	funcao inicio()
	{
		real custo, venda, lucro
	
		escreva("Digite quanto custou o produto: ")
		leia(custo)
		escreva("Digite por quanto o vendeu: ")
		leia(venda)

		lucro = venda-custo
		
		escreva("Você teve ", lucro, " reais de lucro.")
	}
}
