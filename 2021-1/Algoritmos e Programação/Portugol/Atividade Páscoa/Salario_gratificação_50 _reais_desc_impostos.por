programa {
	funcao inicio() {
		real salariobase, novosalario, desconto
		
		escreva("Digite o sal�rio base do funcion�rio: ")
		leia(salariobase)
		
		desconto = salariobase*0.90
		novosalario = desconto+50
		
		escreva("O sal�rio que o funcion�rio ir� receber com o desconto de 10% e a gratifica��o ser� de R$", novosalario)
	}
}
