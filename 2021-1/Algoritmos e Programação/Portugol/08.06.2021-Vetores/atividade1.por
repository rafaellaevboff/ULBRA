programa
{
	/*Faça um programa que preencha um vetor com nove números inteiros, calcule e mostre os números
primos e suas respectivas posições.*/ 
	
	funcao inicio()
	{
		inteiro numeros[9]
		inteiro cont=0, i

		para(i=0; i<9; i++){
			escreva("Digite um número: ")
			leia(numeros[i])
		}
		
		para(i=0; i<9; i++){
			cont = 0
			
			para(inteiro j=1; j<=numeros[i]; j++){
				se(numeros[i] % j == 0){
					cont++
				}
		}se(cont == 2){
			escreva("\n Índice: ", i)
			escreva(". O número a seguir é primo: ")
			escreva(numeros[i], "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */