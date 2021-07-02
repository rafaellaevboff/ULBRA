programa
{
	funcao inicio()
	{
		inteiro quantidade
		real preco, total
	
		escreva("Digite a quantidade do produto que foi comprado: ")
		leia(quantidade)
		escreva("Digite o preço unitário do produto: ")
		leia(preco)

		total = quantidade*preco

		escreva("Você terá que pagar no total ", total, " reais.")
	}
}
