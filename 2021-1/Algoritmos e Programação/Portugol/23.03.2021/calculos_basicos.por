programa
{
	funcao inicio()
	{
		inteiro a, b, adicao, subtracao, multiplicacao, divisao
		
		escreva("Digite um n�mero: ")
		leia(a)
		escreva("Digite outro n�mero: ")
		leia(b)

		adicao = a+b
		subtracao = a-b
		multiplicacao = a*b
		divisao = a/b

		escreva("A soma de ", a, " e ", b, " � ", adicao, ".\n")
		escreva("A subtra��o de ", a, " por ", b, " � ", subtracao, ".\n")
		escreva("A multiplica��o de ", a, " por ", b, " � ", multiplicacao, ".\n")
		escreva("A divis�o de ", a, " por ", b, " � ", divisao, ".")
	}
}
