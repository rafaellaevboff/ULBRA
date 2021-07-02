programa
{
/*Cada espectador de um cinema respondeu a um questionário no qual constava sua idade e sua opinião

em relação ao filme: ótimo — 3; bom — 2; regular — 1. Faça um programa que receba a idade e a opi-
nião de quinze espectadores, calcule e mostre:

■■ a média das idades das pessoas que responderam ótimo;
■■ a quantidade de pessoas que responderam regular; e
■■ a percentagem de pessoas que responderam bom, entre todos os espectadores analisados.*/
	
	funcao inicio()
	{
		caracter opiniao
		inteiro idade, i=0, j=0, a=0, b=0, contador=0
		real porcentagem
		
		faca{
			escreva("\nDigite sua idade: ")
			leia(idade)
			escreva("Dê sua opinião sobre o filme usando a seguinte informação: 1 para regular, 2 para bom e 3 para ótimo: ")
			leia(opiniao)
			
			i++
		
			se(opiniao=='1'){ /*regular*/
				j++
			}
			se(opiniao=='2'){ /*bom*/
				a++
			}
			se(opiniao=='3'){ /*ótimo*/
				contador+=idade
				b++
			}
		
		}enquanto(i<15)

		porcentagem = (100*a)/15
		
		escreva("\n-A média das idades de quem respondeu 'ótimo' é de: ", contador/b)
		escreva("\n-A quantidade de pessoas que respondeu 'regular' é de: ", j)
		escreva("\nA porcentagem de pessoas que respondeu 'bom' é de: ", porcentagem, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1149; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */