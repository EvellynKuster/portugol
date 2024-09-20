programa
{
	
	funcao inicio()
	{
		//11-problema 'aumento salarial'

		real salario, salario_aumentado, aumento

		escreva ("digite o salário da pessoa: ")
		leia (salario)

		se (salario <= 1000)
		{
			aumento = (salario * 20) / 100
			salario_aumentado = salario + aumento
			
			escreva ("Novo salário = " + salario_aumentado + "\n")
			escreva ("aumento = " + aumento + "\n")
			escreva ("porcentagem de aumento = 20% \n")
		}

		se (salario > 1000 e salario <= 3000)
		{
			aumento = (salario * 15) / 100
			salario_aumentado = salario + aumento
			
			escreva ("Novo salário = " + salario_aumentado + "\n")
			escreva ("aumento = " + aumento + "\n")
			escreva ("porcentagem de aumento = 15% \n")
		}

		se (salario > 3000 e salario <= 8000)
		{
			aumento = (salario * 10) / 100
			salario_aumentado = salario + aumento
			
			escreva ("Novo salário = " + salario_aumentado + "\n")
			escreva ("aumento = " + aumento + "\n")
			escreva ("porcentagem de aumento = 10% \n")
		}

		se (salario > 8000)
		{
			aumento = (salario * 5) / 100
			salario_aumentado = salario + aumento
			
			escreva ("Novo salário = " + salario_aumentado + "\n")
			escreva ("aumento = " + aumento + "\n")
			escreva ("porcentagem de aumento = 5% \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */