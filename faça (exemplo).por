programa
{
	
	funcao inicio()
	{
		real valor = 0, total = 0
		inteiro contador = 0
		caracter opcao = 's'

	faca
		{
			contador ++

			escreva ("digite o valor do " + contador + "° produto: ")
			leia (valor)

			total = total + valor

			escreva ("tem mais algum produto? (s)sim ou (n)não \n")
			leia (opcao)
		}
		enquanto (opcao == 's' ou opcao == 'S')
			
		escreva ("Você comprou " + contador + " produto(s), e o total é " + total + " reais \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */