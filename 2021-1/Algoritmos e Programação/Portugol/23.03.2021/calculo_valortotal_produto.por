programa
{
	funcao inicio()
	{
		inteiro quantidade
		real preco, total
	
		escreva("Digite a quantidade do produto que foi comprado: ")
		leia(quantidade)
		escreva("Digite o pre�o unit�rio do produto: ")
		leia(preco)

		total = quantidade*preco

		escreva("Voc� ter� que pagar no total ", total, " reais.")
	}
}
