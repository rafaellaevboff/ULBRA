programa
{
/*Leia um conjunto de alunos, cada um com o nome e a nota.
 * Em seguida, exiba o nome dos alunos que possuem nota maior do que a média da turma.
*/
	
	funcao inicio()
	{	
		const inteiro size = 5
		cadeia aluno[size]
		real nota[size]
		inteiro i=0 
		real mediaNotas=0.0, somaNotas=0.0
		
		para(i=0; i<size; i++){
			escreva("\nNOME DO ALUNO:")
			leia(aluno[i])
			escreva("Nota de ", aluno[i], ": ")
			leia(nota[i])

			somaNotas += nota[i]
			}
			
			mediaNotas = somaNotas/size
			escreva("\nA média da turma é: ", mediaNotas, "\n")

			escreva("\nAlunos com nota maior que a média:")
			para(i=0; i<size; i++){
				se(nota[i] > mediaNotas){
					escreva("\n", aluno[i])
				}
        		}
	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */