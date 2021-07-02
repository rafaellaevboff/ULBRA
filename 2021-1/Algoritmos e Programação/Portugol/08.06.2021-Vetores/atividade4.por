programa
{
	/*Faça um programa que preencha um vetor com oito números inteiros, calcule e mostre dois vetores resultantes.
O primeiro vetor resultante deve conter os números positivos e o segundo, os números negativos.
Cada vetor resultante vai ter, no máximo, oito posições, que não poderão ser completamente utilizadas.*/
		
	funcao inicio()
	{
	inteiro vetor[8], positivo[8], negativo[8], i=0, j=0, l=0

		para(i=0; i<8; i++){
		escreva("\nDigite um número:")
		leia(vetor[i])

		se(vetor[i] > 0){
			positivo[l] = vetor[i]
			l++
		}senao se(vetor[i] < 0){
			negativo[j] = vetor[i] 
			j++
		}
		}
		
		escreva("\nNúmeros Positivos:")
		para(i=0; i<l; i++){
			//escreva(positivo[i], " ")
			escreva(positivo[i], " ")
		}

		escreva("\nNúmeros Negativos:")
		para(i=0; i<j; i++){
			//escreva(negativo[i], " ")
			escreva(negativo[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 9, 9, 5}-{positivo, 9, 19, 8}-{negativo, 9, 32, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */