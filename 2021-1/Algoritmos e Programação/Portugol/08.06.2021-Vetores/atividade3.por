programa
{
	/*Faça um programa que preencha dois vetores de dez elementos numéricos cada um e mostre o vetorresultante
da intercalação deles.*/

	funcao inicio()
	{
	inteiro vetor1[10], vetor2[10], vetor3[20], i=0, j=0

		//VETOR1
		escreva("PRIMEIRO VETOR\n")
		para(i=0; i<10; i++){
			escreva("Digite um número: ")
			leia(vetor1[i])
		}
		//VETOR2
		escreva("\nSEGUNDO VETOR\n")
		para(i=0; i<10; i++){
			escreva("Digite um número: ")
			leia(vetor2[i])
		}
		
		//UNIÃO DOS VETORES
		//vetor3[0] = vetor1[0], vetor3[1] = vetor2[0], vetor3[2] = vetor1[1]
		j=0
		para(i=0; i<10; i++){
			vetor3[j] = vetor1[i]
			j = j + 2
		//vetor3[0] = vetor1[0], vetor3[2] = vetor1[0], vetor3[4] = vetor1[1]
		}
		j = 1
		para(i=0; i<10; i++){
			vetor3[j] = vetor2[i]
			j = j + 2
		//vetor3[1] = vetor2[0], vetor3[3] = vetor2[1], vetor3[5] = vetor2[2]
		}
		//Mostrar na tela
		escreva("VETOR INTECALADO:")
		para(i=0; i<20; i++){
			escreva(vetor3[i] + " ")
		}
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */