programa
{
/*Faça um programa que preencha dois vetores, X e Y, com dez números inteiros cada. Calcule e mostre
os seguintes vetores resultantes:
■■ A união de X com Y
(todos os elementos de X e de Y sem repetições).-------------------------------------------------

■■ A diferença entre X e Y
(todos os elementos de X que não existam em Y, sem repetições).

■■ A soma entre X e Y
(soma de cada elemento de X com o elemento de mesma posição em Y).-------------------------------

■■ O produto entre X e Y
(multiplicação de cada elemento de X com o elemento de mesma posição em Y).-----------------------

■■ A intersecção entre X e Y
(apenas os elementos que aparecem nos dois vetores, sem repetições).*/
	
	funcao inicio()
	{
	inteiro vetorX[10] = {3,8,4,2,1,6,8,7,11,9}
	inteiro vetorY[10] = {2,1,5,12,3,0,1,4,5,6}
	inteiro vetorUniao[20]
	inteiro vetorDiferenca[10]
	inteiro vetorSoma[10]
	inteiro vetorMultiplicacao[10]
	inteiro vetorInterseccao[20]
	inteiro i=0, indice=0, posicao
	logico repetiu

		escreva("Vetor X:\n")
		para(i = 0; i < 10; i++){
			repetiu=falso
			posicao = 0
			
			//verificaçao se repetiu valor
			enquanto(nao repetiu e posicao<=indice){
				se(vetorUniao[posicao] != vetorX[i]){
					posicao++
				}senao{
					repetiu = verdadeiro
				}
			}
			se(nao repetiu){
				vetorUniao[indice] = vetorX[i]
				indice++
			}
		escreva(vetorX[i], " ")
		}
		
		escreva("\n\nVetor Y:\n")
		para(i = 0; i < 10; i++){
			repetiu=falso
			posicao = 0
			//verificaçao se repetiu valor
			enquanto(nao repetiu e posicao<=indice){
				se(vetorUniao[posicao] != vetorY[i]){
					posicao++
				}senao{
					repetiu = verdadeiro
				}
			}
			se(nao repetiu){
				vetorUniao[indice] = vetorY[i]
				indice++
			}
		escreva(vetorY[i], " ")
		}

		escreva("\n\nVetor União:\n")
		para(i = 0; i<indice; i++){
			escreva(vetorUniao[i], " ")
		}
			
		//diferença de vetorX e vetorY(oq tem em x e não tem em y, sem repetição)
		escreva("\n\nVetor Diferença:\n")
		para(i = 0; i < 10; i++){
			repetiu=verdadeiro
			posicao = 0
			
			//verificaçao se repetiu valor
			enquanto(repetiu e posicao<=indice){
				se(vetorX[i] != vetorY[i] e posicao<=indice){
					 posicao++
				}senao{
					repetiu = falso
				}
			}
			se(repetiu){
				vetorDiferenca[i] = vetorX[i]
				indice++
			}
		escreva(vetorDiferenca[i], " ")
		}
		//não consegui resolver esse bug, ele escreve todo o vetorX, mesmo que tenha os valores no vetorY
		
		//soma elemento i de x com i de y
		escreva("\n\nSoma de valores do vetor X com os do vetor Y:\n")
		para(i =0; i<10; i++){
			vetorSoma[i] = vetorX[i] + vetorY[i]
			escreva(vetorSoma[i], " ")
		}

		//multiplicar cada valor de vetor x com vetor y
		escreva("\n\nMultiplicação de valores do vetor X com os do vetor Y:\n")
		para(i =0; i<10; i++){
			vetorMultiplicacao[i] = vetorX[i] * vetorY[i]
			escreva(vetorMultiplicacao[i], " ")
		}
		
		//A intersecção entre X e Y (apenas os elementos que aparecem nos dois vetores, sem repetições).
		escreva("\n\nIntersecção do vetor X com o vetor Y:\n")
		para(i = 0; i < 10; i++){
			repetiu=verdadeiro
			posicao = 0
			
			//verificaçao se repetiu valor
			enquanto(repetiu e posicao<=indice){
				se(vetorX[posicao] == vetorY[i]){
					posicao++
				}senao{
					repetiu = falso
				}
			}
			se(repetiu){
				vetorInterseccao[i] = 
				indice++
			}
			escreva(vetorInterseccao[i], " ")
		}
		//não consegui finalizar, pois não consegui encontrar uma lógica para fazer essa parte
		}
	}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */