programa
{
	/*Uma escola deseja saber se existem alunos cursando, simultaneamente, as disciplinas Lógica e Linguagem de
Programação. Coloque os números das matrículas dos alunos que cursam Lógica em um vetor, quinze alunos.
Coloque os números das matrículas dos alunos que cursam Linguagem de Programação em outro vetor, dez
alunos. Mostre o número das matrículas que aparecem nos dois vetores.*/
	funcao inicio()
	{
	const inteiro tamLO=3 //const garante q a variável não vai mudar de valor
	const inteiro tamLP=3
	inteiro vetorLO[tamLO], vetorLP[tamLP]
	inteiro qtd=0
	
		para(inteiro i = 0; i < tamLO; i++){
			escreva("Digite o número da matrícula do aluno matriculado em LO:\n")
			leia(vetorLO[i])
		}
		para(inteiro i = 0; i < tamLP; i++){
			escreva("Digite o número da matrícula do aluno matriculado em LP:\n")
			leia(vetorLP[i])
		}

		para(inteiro i = 0; i < tamLO; i++){
			para(inteiro j = 0; j < tamLP; j++){
				se(vetorLO[i] == vetorLP[j]){
					escreva("\nMesmo número de matrícula que aprece em LO e LP:", vetorLO[i])
					qtd++
					//pare
				}
			}
		}
		escreva("\n\nTotal de alunos nas duas: ", qtd)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 942; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */