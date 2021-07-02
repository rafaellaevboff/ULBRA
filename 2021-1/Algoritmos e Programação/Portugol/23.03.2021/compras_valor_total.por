programa
{
	funcao inicio()
	{
		real valor1, valor2, total, cod1, cod2
		inteiro quantidade1, quantidade2
		
		escreva("Digite o código da peça 1: ")
		leia(cod1)
		escreva("Digite quantas peças 1 foram vendidas: ")
		leia(quantidade1)
		escreva("Digite o valor unitário da peça 1: ")
		leia(valor1)
		
		escreva("Digite o código da peça 2: ")
		leia(cod2)
		escreva("Digite quantas peças 2 foram vendidas: ")
		leia(quantidade2)
		escreva("Digite o valor unitário da peça 2: ")
		leia(valor2)

		total = (quantidade1*valor1)+(quantidade2*valor2)

		escreva("O valor total da compra foi: ", total, " reais.")
	}
}
