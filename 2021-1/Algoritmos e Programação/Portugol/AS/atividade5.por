programa
{
	//Faça um programa de consulta de telefones a partir de um nome informado por uma chave de dados:
	//leia nomes de pessoas com seus respectivos telefones, sendo a quantidade determinada pelo usuário. 
	//Em seguida, pergunte ao usuário qual o nome que ele deseja consultar o telefone. Após sua resposta, 
	//exiba o telefone da pessoa procurada.

	
	funcao inicio()
	{
		inteiro size
		cadeia nome[500], procurar
		inteiro telefone[500], i=0

		escreva("Digite a quantidade de telefones que deseja cadastrar: ")
		leia(size)
		se(size>500){
			escreva("Serão gravados até 500 números. O programa suporta até 500 números de telefone.")
		}
				
		para(i=0; i<size; i++){
			escreva("\nNome: ")
			leia(nome[i])
			escreva("Número de telefone: ")
			leia(telefone[i])
		}
		
		escreva("\nDigite o nome da pessoa que deseja saber o número de telefone: ")
		leia(procurar)

		para(i=0; i<size; i++){
			se(procurar == nome[i]){
				escreva("\nNúmero de telefone de ", nome[i], ": ", telefone[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 907; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */