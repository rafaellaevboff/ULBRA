programa {
	inclua biblioteca Matematica --> mat
	funcao inicio() {

		real num, quadrado, cubo, raiz_quadrada, raiz_cubica
		
		escreva("Digite um n�mero maior que 0: ")
		leia(num)
		
		quadrado = num*num
		cubo = mat.potencia(num,3)
		raiz_quadrada = mat.raiz(num, 2)
		raiz_cubica = mat.raiz(num, 3)
		
		escreva(num, " elevado ao quadrado: ", quadrado, "\n")
		escreva(num, " elevado ao cubo: ", cubo, "\n")
		escreva(num, " na ra�z quadrada: ", raiz_quadrada, "\n")
		escreva(num, " na ra�z c�bica: ", raiz_cubica, "\n")
	}
}
