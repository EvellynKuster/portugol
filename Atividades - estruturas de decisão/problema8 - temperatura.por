programa
{
	
	funcao inicio()
	{
		//08-problema "tenperatura"

		real temperatura_c, temperatura_f
		caracter escala

		

		escreva ("Você vai digitar a temperatura em qual escala (C/F)? ")
		leia (escala)

		se (escala == 'C' ou escala =='c')
		{
			escreva ("Digite a temperatura em Celcius: ")
			leia (temperatura_c)

			temperatura_f = temperatura_c * 1.8 + 32

			escreva ("temperatura equivalente em Fahrenheit: " + temperatura_f)
		}

		senao se (escala == 'F' ou escala == 'f')
		{
			escreva ("Digite a temperatura em Fahrenheit: ")
			leia (temperatura_f)

			temperatura_c = (temperatura_f - 32) / 1.8

			escreva ("temperatura equivalente em Celcius: " + temperatura_c)
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */