programa
{
	//03-PROBLEMA "TSE"
	
	funcao inicio()
	{
		inteiro idade, senha, i 
		caracter fila
		
		escreva ("\n❤ BEM VINDO AO TSE ❤ \n")
		escreva ("\nme diga a sua senha: ")
		leia (i)
			
		para (i = 1; i <= 20; i++)
		{
			escreva ("\nMe diga a sua idade para eu verificar se você pode tirar seu titulo de eleitor: ")
			leia (idade)
	
			se (idade <16)
			{
				escreva ("\nVocê é muito novo(a) e não pode tirar um título de eleitor")
			}
		
			senao
			{
				escreva ("\nvamos emitir seu título de eleitor em breve \n")
			}

			escreva ("\ntem mais pessoas na fila? (s)sim ou (n)não \n")
			leia (fila)

			se (fila == 'n' ou fila == 'N')
			{
				i = 21
			}

			inicio()
		}			
	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 697; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */