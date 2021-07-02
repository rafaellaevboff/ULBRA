programa {
	funcao inicio() {
		
		real medida, polegadas, jardas, milhas
    
		escreva("Digite uma medida em pés: ")
		leia(medida)
		
		polegadas= medida*12
		jardas= medida*3
		milhas= medida*5280
		
		escreva("\n", medida, " pés \n Em polegadas é: ", polegadas, "\n Em jardas: ", jardas, "\n Em milhas ", milhas)
	}
}
