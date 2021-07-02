programa
{	
	/*Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade, sexo (M/F)
e salário. Faça um programa que calcule e mostre:
■■ a média dos salários do grupo;
■■ a maior e a menor idade do grupo;
■■ a quantidade de mulheres com salário até R$ 200,00;
■■ a idade e o sexo da pessoa que possui o menor salário.
Finalize a entrada de dados ao ser digitada uma idade negativa.*/

	funcao inicio()
	{
	real salario, media, menor_salario=10000
	caracter sexo, menor_salario_sexo=' '
	inteiro idade, i=0, acumulador=0, j=0, l=0, menor_idade=500, maior_idade=0, menor_salario_idade=0
	
	faca{
		escreva("\nDigite seu sexo(feminino=f ou masculino=m): ")
		leia(sexo)
		escreva("Digite seu salário: R$")
		leia(salario)
		escreva("Digite sua idade: ")
		leia(idade)

		se(idade>0){
			/*acumulador=acumulador+salario----é a mesma coisa que o de baixo*/
			acumulador+=salario
			i++
			
			se(idade>maior_idade){
				maior_idade=idade
			}
			se(idade<menor_idade){
				menor_idade=idade
			}
	
			se(sexo=='f'){
				se(salario<=200){
					j++
				}
			}senao se(sexo=='m'){
				se(salario<=200){
					l++
				}
			}
	
			se(salario<menor_salario){
				menor_salario=salario
				menor_salario_sexo=sexo
				menor_salario_idade=idade
			}
		}
		
		
		}enquanto(idade>0)
	
		media=acumulador/i
		
		escreva("\n-A media dos salários é: R$", media)
		escreva("\n-A maior idade é ", maior_idade," e a menor é ", menor_idade)
		escreva("\n-A quantidade de mulheres com salário menor que R$200,00 é: ", j, ". E a de homens é: ", l)
		escreva("\n-Quem tem o menor salário tem ", menor_salario_idade, " anos e é do sexo ", menor_salario_sexo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */