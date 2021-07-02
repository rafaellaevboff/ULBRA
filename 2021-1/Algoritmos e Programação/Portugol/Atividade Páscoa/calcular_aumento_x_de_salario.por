programa {
	funcao inicio() {
	    real salario, aumento, percentual, percentual1
	    
		escreva("Digite seu salário: ")
		leia(salario)
		escreva("Digite o percentual de aumento: ")
		leia(percentual)
		
		percentual1= (percentual/100)+1
		aumento= salario*percentual1
		
		escreva("Com o aumento de ", percentual, "% seu salário passou a valer R$", aumento)
	}
}
