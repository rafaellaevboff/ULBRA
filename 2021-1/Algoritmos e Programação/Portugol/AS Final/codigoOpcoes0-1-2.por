programa
{
	
	funcao inicio()
	{
		const inteiro size = 5
		real vetor[size]
		inteiro i, codigo
		logico cod = verdadeiro

		para(i=0; i<size; i++){
			escreva("Digite um valor: ")
			leia(vetor[i])
		}

		faca{
			escreva("\nCÓDIGOS DISPONÍVEIS:")
			escreva("\n0-finalizar programa\n1-vetor na ordem digitada\n2-ordem inversa\n")
			escreva("\nDigite qual código deseja: ")
			leia(codigo)
			
			se(codigo == 1){
				para(i=0; i<size; i++){
					escreva(vetor[i], "\n")
				}
			}
			se(codigo == 2){
				para(i=0; i<size; i++){
					escreva(vetor[(size-1)-i], "\n")
				}
			}
			se(codigo!=0 e codigo!=1 e codigo!=2){
				escreva("O código é inválido. Você deve digitar 0, 1 ou 2.\n")
			}
			se(codigo == 0){
				escreva("Programa finalizado.")
				cod = falso
			}
		}enquanto(cod == verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */