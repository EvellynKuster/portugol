programa
{
	
	funcao inicio()
	{
		// 03-problema"MENOR_DE_TRÊS"

		inteiro valor1, valor2, valor3, menor

		escreva ("primeiro valor : ")
		leia (valor1)

		escreva ("segundo valor : ")
		leia (valor2)

		escreva ("terceiro valor : ")
		leia (valor3)

		menor = valor1

		se ( valor1 < menor)
		{
			menor = valor2
		}

		se (valor2 < menor)
		{
			menor = valor2
		}

		se (valor3 < menor)
		{
			menor = valor3
		}

		escreva ("menor = " + menor)


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */