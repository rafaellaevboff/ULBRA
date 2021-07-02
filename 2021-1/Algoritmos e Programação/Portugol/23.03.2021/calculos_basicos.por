programa
{
	funcao inicio()
	{
		inteiro a, b, adicao, subtracao, multiplicacao, divisao
		
		escreva("Digite um número: ")
		leia(a)
		escreva("Digite outro número: ")
		leia(b)

		adicao = a+b
		subtracao = a-b
		multiplicacao = a*b
		divisao = a/b

		escreva("A soma de ", a, " e ", b, " é ", adicao, ".\n")
		escreva("A subtração de ", a, " por ", b, " é ", subtracao, ".\n")
		escreva("A multiplicação de ", a, " por ", b, " é ", multiplicacao, ".\n")
		escreva("A divisão de ", a, " por ", b, " é ", divisao, ".")
	}
}
