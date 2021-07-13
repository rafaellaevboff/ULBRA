programa
{
	
	funcao inicio()
	{	
		const inteiro size = 10
		real compra[size], venda[size], lucro[size]
		cadeia produto[size]
		inteiro i, a=0, b=0, c=0

		para(i=0; i<size; i++){
			escreva("\nDigite o nome do produto: ")
			leia(produto[i])
			escreva("Escreva o valor de compra de ", produto[i],": ")
			leia(compra[i])
			escreva("Escreva o valor de venda de ", produto[i],": ")
			leia(venda[i])
		}
		
		para(i=0; i<size; i++){
			lucro[i] = ((venda[i]-compra[i])/venda[i])*100
			
			se(lucro[i]<10){
				a++
			}
			se(lucro[i] >=10 e lucro[i]<=20){
				b++
			}
			se(lucro[i]>20){
				c++
			}
		}
		escreva("\nMargem de lucro menor que 10%: ", a, " produto(s).")
		escreva("\nMargem de lucro maior ou igual a 10% e menor ou igual a 20%: ", b, " produto(s).")
		escreva("\nMargem de lucro maior que 20%: ", c, " produto(s).")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 486; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */