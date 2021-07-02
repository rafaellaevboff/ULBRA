programa {
	funcao inicio() {
		inteiro numero
		inteiro soma=0
		
		escreva("Digite o número até o qual deseja mostrar:")
		leia(numero)
		
		se(numero>1){
		    para(inteiro i=1;  i<=numero; i++){
		    soma=soma+i
		    escreva("\n", i)
		    }
		}senao{
		    escreva("Número tem que ser maior que 1.")
		}
		escreva("\nSoma total:", soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */