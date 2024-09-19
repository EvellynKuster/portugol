programa
{
	
	funcao inicio()
	{
		//04-problema "OPERADORA"

		real minutos, taxa_final

		const real TAXA_MINIMA = 50
		const real MINUTO = 2


		escreva ("digite a quantidade de minutos : ")
		leia (minutos)

		taxa_final = (TAXA_MINIMA) + minutos * MINUTO - 200

		se (minutos <=100)
		{
			escreva ("valor a pagar : R$" + TAXA_MINIMA)
		}

		se (minutos > 100)
		{
			escreva ("valor a pagar : R$" + taxa_final)
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 265; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */