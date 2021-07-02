programa {
	funcao inicio() {
		/*Faça um programa que leia os valores dos salários atuais dos funcionários de uma empresa e imprima os valores com aumento.
		Se o salário for menor ou igual a R$ 500,00, o programa deve aplicar um aumento de 0.10 (10%) e se for maior que R$ 500,00, 
		o aumento deve ser de 0.08 (8%). Assim como no nosso último exemplo, o usuário é que deve informar quando deseja sair. 
		Ou seja, ele deve digitar o salário de um funcionário e o programa vai exibir o valor com o aumento. Depois ele deve responder se deseja digitar 
		outro salário ou não. Se ele responder que sim, deve-se solicitar o novo salário e exibir o valor com aumento. Então, torna-se a perguntar se ele 
		deseja informar um novo salário e repetir o laço até que ele não queira informar novos salários.*/
		
		real salario=0.0, salario_aumento10, salario_aumento08
		logico continuar=falso
		
		faca{
		    escreva("\nDigite seu salário atual: R$")
		    leia(salario)
		    
		    se(salario<=500){
		        salario_aumento10=salario*1.10
		        escreva("\nSeu novo salário é: R$", salario_aumento10)
		    }
		    se(salario>500){
		        salario_aumento08=salario*1.08
		        escreva("Seu novo salário é: R$", salario_aumento08)
		    }
		    
		    escreva("\n\nAteção: escreva 'verdadeiro' para sim e 'falso' para não. Você deseja digitar outro salário?\n")
		    leia(continuar)
		    
		}enquanto(continuar==verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */