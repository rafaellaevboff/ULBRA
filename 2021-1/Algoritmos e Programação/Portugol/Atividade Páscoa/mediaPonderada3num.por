programa
{
funcao inicio()
{
	real n1, n2, n3, p1, p2, p3, media

	escreva("Digite a primeira nota: ")
	leia(n1)
	escreva("Digite o peso dessa nota: ")
	leia(p1)
	escreva("Digite a segunda nota: ")
	leia(n2)
	escreva("Digite o peso dessa nota: ")
	leia(p2)
	escreva("Digite a terceira nota: ")
	leia(n3)
	escreva("Digite o peso dessa nota: ")
	leia(p3)

	media = ((n1*p1)+(n2*p2)+(n3*p3))/(p1+p2+p3)

	escreva("A média ponderada de ", n1, ", ", n2, " e ", n3, " é ", media, ".")
}
}