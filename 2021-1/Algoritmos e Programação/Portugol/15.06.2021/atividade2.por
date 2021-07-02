programa
{
/*Faça um programa que preencha um vetor com sete números inteiros, calcule e mostre:
■■ os números múltiplos de 2;
■■ os números múltiplos de 3;
■■ os números múltiplos de 2 e de 3.*/
	
	funcao inicio()
	{
		inteiro vetor[7], mult2[7], mult3[7], mult2e3[7], i=0, j=0, l=0, p=0

		para(i=0; i<7; i++){
		escreva("Digite um número: ")
		leia(vetor[i])
		
		se(vetor[i] % 2 == 0){
			mult2[p] = vetor[i]
			p++
		}senao se(vetor[i] % 3 == 0){
			mult3[j] = vetor[i]
			j++
		}
		se((vetor[i] % 2 == 0) e (vetor[i] % 3 == 0)){
			mult2e3[l] = vetor[i]
			l++
		}
		}
		//limpa() ---> usar isso pra limpar oq foi digitado antes
		escreva("\nMúltiplos de 2: ")
		para(i=0; i<p; i++){
			escreva("\n", mult2[i])
		}
		
		escreva("\n\nMúltiplos de 3: ")
		para(i=0; i<j; i++){
			escreva("\n", mult3[i])
		}
		
		escreva("\n\nMúltiplos de 2 e 3: ")
		para(i=0; i<l; i++){
			escreva("\n", mult2e3[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 640; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 10, 10, 5}-{mult2, 10, 20, 5}-{mult3, 10, 30, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */