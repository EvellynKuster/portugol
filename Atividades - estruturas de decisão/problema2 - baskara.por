programa
{
	inclua biblioteca Matematica 
	
	funcao inicio()
	{
		//02-problema "BASKARA"

		real a, b, c, delta, x, x1, x2, raiz_quadrada

		escreva ("escreva seu coeficiente a: ")
		leia (a)

		escreva ("escreva seu coeficiente b: ")
		leia (b)

		escreva ("escreva seu coeficiente c: ")
		leia (c)

		delta = (b * b) - 4 * a * c
		raiz_quadrada = Matematica.raiz (delta, 2.0)

		se (delta < 0)
		{
			escreva ("a equação não possui raízes reais")
		}

		se (delta == 0)
		{
			x = (-b) / (2 * a)
			escreva ("X = " + x + "\n")
		}

		se (delta > 0)
		{
			x1 = (-b + raiz_quadrada) / (2 * a)
			x2 = (-b - raiz_quadrada) / (2 * a)

			escreva ("X1 = " + x1 + "\n")
			escreva ("X2 = " + x2 + "\n")
		}


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 485; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */