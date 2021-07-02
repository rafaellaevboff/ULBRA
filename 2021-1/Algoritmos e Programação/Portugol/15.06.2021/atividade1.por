programa
{
/*Faça um programa que preencha um vetor com seis elementos numéricos inteiros. Calcule e mostre:
■■ todos os números pares;
■■ a quantidade de números pares;
■■ todos os números ímpares;
■■ a quantidade de números ímpares.*/
	
	funcao inicio()
	{
		inteiro vetor1[6], i=0, par[6], impar[6], j=0, l=0
		
		para(i=0; i<6; i++){
		escreva("Digite um número: ")
		leia(vetor1[i])
			se(vetor1[i] % 2 == 0){
				par[j] = vetor1[i]
				j++
			}senao{
				impar[l] = vetor1[i]
				l++
			}
		}
		escreva("\nPAR: \n")
		para(i=0; i<j; i++){
			escreva( par[i], "\n")
		}
		escreva("Quantidade de números par: ", j, "\n")
		
		escreva("\nÍMPAR: \n")
		para(i=0; i<l; i++){
			escreva(impar[i], "\n")
		}
		escreva("Quantidade de números ímpar: ", l, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor1, 11, 10, 6}-{par, 11, 26, 3}-{impar, 11, 34, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */