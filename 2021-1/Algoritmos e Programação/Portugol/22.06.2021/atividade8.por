programa
{
	/*Faça um programa que preencha um vetor com os nomes de sete alunos e carregue outro vetor com a média
final desses alunos. Calcule e mostre:
■■ o nome do aluno com maior média (desconsiderar empates);

■■ para cada aluno não aprovado, isto é, com média menor que 7, mostrar quanto esse aluno precisa ti-
rar na prova de exame final para ser aprovado. Considerar que a média para aprovação no exame é 5.*/
	
	funcao inicio()
	{
		const inteiro size = 7
		cadeia nomes[size]
		inteiro iMaior=0, i=0
		real media[size], vMaior=0.0, nMinima

		para(i=0; i<size; i++){
			escreva("\nInforme o nome do aluno: ", i + 1,": ")
			leia(nomes[i])
			escreva("Informe a média final do aluno", i + 1, ": ")
			leia(media[i])

			se(media[i] > vMaior){
				vMaior = media[i]
				iMaior = i
			}
			se(media[i] < 7){
				escreva("REPROVADO.\nO aluno ", nomes[i], " precisa atingir a média 5 no exame final para ser aprovado.\n")
			}
		}
			escreva("\nA maior média é ", vMaior, ", do aluno ", nomes[iMaior],".\n")

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */