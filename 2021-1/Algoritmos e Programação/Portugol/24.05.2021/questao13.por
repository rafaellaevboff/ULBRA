programa
{
/*Faça um programa que receba a idade e o peso de quinze pessoas, e que calcule e mostre as médias dos
pesos das pessoas da mesma faixa etária. As faixas etárias são: de 1 a 10 anos, de 11 a 20 anos, de 21 a
30 anos e de 31 anos para cima.*/
	
	funcao inicio()
	{
		inteiro idade, i=0, j=0, l=0, a=0, b=0
		real peso, contador1=0.0, contador2=0.0, contador3=0.0, contador4=0.0
		
		faca{
			escreva("\nDigite sua idade: ")
			leia(idade)
			escreva("Digite seu peso: ")
			leia(peso)
			
			i++

			se(idade>=1 e idade<=10){
				contador1+=peso
				j++
			}
			se(idade>=11 e idade<=20){
				contador2+=peso
				l++
			}
			se(idade>=21 e idade<=30){
				contador3+=peso
				a++
			}
			se(idade>=30){
				contador4+=peso
				b++
			}
		}enquanto(i<15)

		escreva("\nNa pesquisa foi coletado a idade e o peso de 15 pessoas. A seguir a média de peso por faixa etária:")
		escreva("\n\nMédia de peso da faixa etária de 1 a 10 anos: ", contador1/j)
		escreva("\nMédia de peso da faixa etária de 11 a 20 anos: ", contador2/l)
		escreva("\nMédia de peso da faixa etária de 21 a 30 anos: ", contador3/a)
		escreva("\nMédia de peso da faixa etária de 31 anos e de 31 para cima: ", contador4/b)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 895; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */