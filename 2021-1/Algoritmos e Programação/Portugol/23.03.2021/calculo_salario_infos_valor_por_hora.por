programa
{
	funcao inicio()
	{
		inteiro numero, horas
		real ganhoPHora, salario

		escreva("Digite seu número cadastrado: ")
		leia (numero)
		escreva("Digite quantas horas você trabalha por dia: ")
		leia (horas)
		escreva("Digite quanto ganha por hora trabalhada: ")
		leia(ganhoPHora)
		
		salario = (horas*ganhoPHora)*30
		
		escreva("De acordo com os dados apresentados seu salário é de R$", salario)
	}
}
