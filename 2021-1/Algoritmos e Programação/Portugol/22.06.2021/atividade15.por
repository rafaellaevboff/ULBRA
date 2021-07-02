programa
{
	/*Faça um programa que receba o nome de oito clientes e armazene-os em um vetor. Em um segundo vetor,
armazene a quantidade de DVDs locados em 2011 por cada um dos oito clientes. Sabe-se que, para cada
dez locações, o cliente tem direito a uma locação grátis. Faça um programa que mostre o nome de todos
os clientes, com a quantidade de locações grátis a que ele tem direito.*/

    funcao inicio()
    {
		const inteiro size = 8
		cadeia nome[size]
		inteiro dvds[size]
		inteiro loc[size]
	
		para(inteiro i=0; i<size; i++){
			escreva("\nDigite o nome do cliente: ")
			leia(nome[i])
			escreva("Digite a quantia de locações do cliente: ")
			leia(dvds[i])
			loc[i] = dvds[i] / 10
		}

		para(inteiro i=0 ; i<size; i++){
			escreva("\n\nNome do cliente: ", nome[i], "\n")
			escreva("Quantidade de locações grátis disponíveis: ", loc[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 502; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */