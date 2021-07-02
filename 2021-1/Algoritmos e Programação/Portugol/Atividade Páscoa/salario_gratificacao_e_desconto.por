programa {
	funcao inicio() {
	    real salario_base, desconto, gratificacao, salario_final
	    
		escreva("Digite seu salário: ")
		leia(salario_base)
		
        desconto= salario_base*0.07
        gratificacao= salario_base*0.05
        salario_final= salario_base+gratificacao-desconto
        
        escreva("O salário com a gratificação e desconto é R$", salario_final)
	}
}
