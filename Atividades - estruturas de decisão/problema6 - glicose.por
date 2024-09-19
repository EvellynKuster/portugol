programa
{
	
	funcao inicio()
	{
		//06-problema "GLICOSE"

		real glicose

		escreva ("digite a medida da glicose: ")
		leia (glicose)

		se (glicose <= 100)
		{
			escreva ("classificação: normal")
		}

		senao se (glicose > 100 e glicose <= 140)
		{
			escreva ("classificação: elevado")
		}

		senao 
		{
			escreva ("classificação: diabetes")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */