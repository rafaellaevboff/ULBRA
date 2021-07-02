programa
{
	/*Faça um programa que receba dez números inteiros e armazene-os em um vetor. Calcule e mostre dois
vetores resultantes: o primeiro com os números pares e o segundo, com os números ímpares.*/
	
    funcao inicio()
    {
    		const inteiro size = 10
		inteiro vetor[size]
		inteiro par[size]
		inteiro impar[size]
		inteiro i
		inteiro j=0
		inteiro k=0
        
		para(i = 0; i < size; i++){
			escreva("Digite um número: ")
			leia(vetor[i])
            
		se(vetor[i] % 2 == 0){
			par[j] = vetor[i]
			j++
		}
		
		se(vetor[i] % 2 != 0){
			impar[k] = vetor[i]
			k++
		}
		}
        
		escreva("\nNúmeros pares: \n")
		para(i = 0; i < j; i++){
		escreva(par[i], "\n")
		}
        
		escreva("\nNúmeros ímpares: \n")
		para(i=0; i < k; i++){
			escreva(impar[i], "\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */