programa
{
	
	funcao inicio()
	{
		//07-problema "DARDO"

		real chance1, chance2, chance3, maior

		escreva ("digite as três distâncias: \n")
		leia (chance1)
		leia (chance2)
		leia (chance3)

		maior = chance1

		se ( chance1 > maior)
		{
			maior = chance2
		}

		se (chance2 > maior)
		{
			maior = chance2
		}

		se (chance3 > maior)
		{
			maior = chance3
		}

		escreva ("maior distância = " + maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */