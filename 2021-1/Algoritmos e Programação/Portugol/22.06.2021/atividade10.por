programa
{
	
	funcao inicio()
	{
		const inteiro tam=5
		const inteiro tam2=10
		inteiro totalSegundoVetor=0
		inteiro div=0
		inteiro p1=0
		inteiro p2=0
		
		inteiro pVetor[tam2], sVetor[tam], vetorResultant1[tam], vetorResultant2[tam]

		para(inteiro i=0; i<tam2; i++){
			escreva("\nDigite o primeiro vetor posição: ",i, " : ")
			leia(pVetor[i])
		}
		para(inteiro i=0; i<tam; i++){
			escreva("\nDigite o segundo vetor posição: ",i, " : ")
			leia(sVetor[i])
			totalSegundoVetor+=sVetor[i]
		}
		para(inteiro i=0; i<tam2; i++){
			se(pVetor[i]%2==0){
			vetorResultant1[p1]=pVetor[i]+totalSegundoVetor
			p1++
			}
		}
		para(inteiro i=0; i<tam2; i++){
			escreva("\n",vetorResultant1[i])
		}
		para(inteiro i=0; i<tam2; i++){
			se(pVetor[i]%2==1){
				para(inteiro j=0; j<tam; j++){
					se(pVetor[i]%sVetor[j]==0){
						div++
					}
				}
				vetorResultant2[p2]=div
				div=0
				p2++
			}
			}
			para(inteiro i=0; i<p2; i++){
				escreva("\n",vetorResultant2[i])
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */