programa
{
/*Foi feita uma pesquisa sobre a audiência de canal de TV em várias casas de uma cidade, em determinado
dia. Para cada casa consultada foi fornecido o número do canal (4, 5, 7, 12) e o número de pessoas que
estavam assistindo àquele canal. Se a televisão estivesse desligada, nada era anotado, ou seja, essa casa
não entrava na pesquisa. Faça um programa que:

■■ leia um número indeterminado de dados (número do canal e número de pessoas que estavam as-
sistindo); e

■■ calcule e mostre a porcentagem de audiência de cada canal.
Para encerrar a entrada de dados, digite o número do canal ZERO.*/
	
	funcao inicio()
	{
		inteiro i=0
		cadeia canal
		inteiro pessoas=0, contador=0, contador1=0, contador2=0, contador3=0, contador4=0
		real audiencia4=0.0, audiencia5=0.0, audiencia7=0.0, audiencia12=0.0, porcentagem4=0.0, porcentagem5=0.0, porcentagem7=0.0, porcentagem12=0.0
		
		faca{
			escreva("\nNÚMERO DO CANAL: ")
			leia(canal)
			
			se(canal!="0"){
				escreva("PESSOAS ASSISTINDO AO CANAL: ")
				leia(pessoas)
			}senao{
				pessoas=0
			}
			
			contador+=pessoas
			
			se(canal=="4"){
				contador1+=pessoas
			}senao se(canal=="5"){
				contador2+=pessoas
			}senao se(canal=="7"){
				contador3+=pessoas
			}senao se(canal=="12"){
				contador4+=pessoas
			}senao{
				pessoas=0
			}
		}enquanto(canal!="0")

		porcentagem4 = (100*contador1)/(contador)
		porcentagem5 = (100*contador2)/(contador)
		porcentagem7 = (100*contador3)/(contador)
		porcentagem12 = (100*contador4)/(contador)

		escreva("\nCANAL 4: ", porcentagem4, "% de audiência")
		escreva("\nCANAL 5: ", porcentagem5, "% de audiência")
		escreva("\nCANAL 7: ", porcentagem7, "% de audiência")
		escreva("\nCANAL 12: ", porcentagem12, "% de audiência")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1067; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */