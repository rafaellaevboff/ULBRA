programa {
	funcao inicio() {
		real salariobase, novosalario, desconto
		
		escreva("Digite o salário base do funcionário: ")
		leia(salariobase)
		
		desconto = salariobase*0.90
		novosalario = desconto+50
		
		escreva("O salário que o funcionário irá receber com o desconto de 10% e a gratificação será de R$", novosalario)
	}
}
