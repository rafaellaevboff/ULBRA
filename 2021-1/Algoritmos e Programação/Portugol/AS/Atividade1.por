programa
{
/*  Faça um programa que receba a quantidade de funcionários de uma empresa,
 *   e para cada funcionário leia  o salário do funcionário, calcule e 
 *   mostre o novo salário, acrescido de bonificação e de auxílio escola.
*/
	
	funcao inicio()
	{
		inteiro size
		cadeia funcionario[500]
		real salario[500]
		inteiro i=0, qtd=0

		escreva("Digite quantos funcionários a empresa tem: ")
		leia(size)
		se(size>500){
			escreva("O programa poderá receber somente 500 funcionários.")
		}
		
		para(i=0; i < size; i++){
			escreva("\nDigite o número do funcionário: ")
			leia(funcionario[i])
			escreva("Digite o salário de ", funcionario[i], ": ")
			leia(salario[i])

		se(salario[i] <= 500){
			salario[i] = salario[i] *1.5
				se(salario[i] <= 600){
					salario[i] = salario[i] + 150
				}senao{
					salario[i] = salario[i] + 100
				}
				
		}senao se((salario[i] > 500) e (salario[i] <= 1200)){
			salario[i] = salario[i] *1.12
				se(salario[i] <= 600){
					salario[i] += 150
				}senao{
					salario[i] = salario[i] + 100
				}
				
		}senao se(salario[i] > 1200){
			salario[i] = salario[i] + 100
		}
	}
	escreva("\nReajuste de salários (salário + bonificação + auxílio escola):\n")
	para(i=0; i<size; i++){
		escreva("\n", funcionario[i], " teve seu salário reajustado para R$", salario[i])
		escreva("\n-------------------------------------------------")
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */