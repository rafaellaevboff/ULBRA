programa
{
	funcao inicio()
	{
		real valor1, valor2, total, cod1, cod2
		inteiro quantidade1, quantidade2
		
		escreva("Digite o c�digo da pe�a 1: ")
		leia(cod1)
		escreva("Digite quantas pe�as 1 foram vendidas: ")
		leia(quantidade1)
		escreva("Digite o valor unit�rio da pe�a 1: ")
		leia(valor1)
		
		escreva("Digite o c�digo da pe�a 2: ")
		leia(cod2)
		escreva("Digite quantas pe�as 2 foram vendidas: ")
		leia(quantidade2)
		escreva("Digite o valor unit�rio da pe�a 2: ")
		leia(valor2)

		total = (quantidade1*valor1)+(quantidade2*valor2)

		escreva("O valor total da compra foi: ", total, " reais.")
	}
}
