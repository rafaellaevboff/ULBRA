programa
{
	funcao inicio()
	{
		inteiro numero, horas
		real ganhoPHora, salario

		escreva("Digite seu n�mero cadastrado: ")
		leia (numero)
		escreva("Digite quantas horas voc� trabalha por dia: ")
		leia (horas)
		escreva("Digite quanto ganha por hora trabalhada: ")
		leia(ganhoPHora)
		
		salario = (horas*ganhoPHora)*30
		
		escreva("De acordo com os dados apresentados seu sal�rio � de R$", salario)
	}
}
