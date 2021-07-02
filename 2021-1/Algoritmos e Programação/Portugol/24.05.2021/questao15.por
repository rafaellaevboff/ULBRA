programa
{
/*Uma empresa fez uma pesquisa de mercado para saber se as pessoas gostaram ou não de um novo pro-
duto lançado. Para isso, forneceu o sexo do entrevistado e sua resposta (S — sim; ou N — não). Sabe-se
que foram entrevistadas dez pessoas. Faça um programa que calcule e mostre:

■■ o número de pessoas que responderam sim;
■■ o número de pessoas que responderam não;
■■ o número de mulheres que responderam sim; e
■■ a percentagem de homens que responderam não, entre todos os homens analisados.*/
	
	funcao inicio()
	{
		caracter gosto, sexo
		inteiro i=0, j=0, a=0, b=0, d=0
		
		
		faca{
			escreva("\nDigite seu sexo (f para feminino e m para masculino): ")
			leia(sexo)
			escreva("Você gostou do produto? (Digite s para sim e n para não): ")
			leia(gosto)
			
			i++

			se(gosto=='s'){
				j++
			}senao se(gosto=='n'){
				a++
			}
			se(sexo=='f' e gosto=='s'){
				b++
			}
			se(sexo=='m' e gosto=='n'){
				d++
			}
		}enquanto(i<10)

		escreva("\nNÚMERO DE PESSOAS QUE RESPONDERAM SIM(S): ", j)
		escreva("\nNÚMERO DE PESSOAS QUE RESPONDERAM NÃO(N): ", a)
		escreva("\nNÚMERO DE MULHERES QUE RESPONDERAM SIM(S): ", b)
		escreva("\nNÚMERO DE HOMENS QUE RESPONDERAM NÃO(N): ", d)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */