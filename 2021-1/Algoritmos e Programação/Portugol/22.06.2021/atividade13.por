programa
{
	/*Faça um programa que receba o nome e a nota de oito alunos e mostre o relatório a seguir:
Digite o nome do 1o aluno: Carlos
Digite a nota do Carlos: 8
Digite o nome do 2o aluno: Pedro
Digite a nota do Pedro: 5
Relatórios de notas
Carlos 8.0
Pedro 5.0
..
..
..
Média da classe = ??*/

    funcao inicio()
    {
    		const inteiro size = 2
		cadeia nome[size]
		real nota[size]
		real mediaClasse = 0.0

		para(inteiro i=0; i<size; i++){
			escreva("\nDigite o nome do ", i + 1,"º aluno: ")
			leia(nome[i])
			escreva("Digite a nota de ", nome[i], ": ")
			leia(nota[i])
			
			mediaClasse += nota[i]
			}

		para(inteiro i=0; i<size; i++){
			escreva("\n", nome[i], " ", nota[i])
		}
		
		escreva("\n\nMédia da classe = ", mediaClasse/size)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */