programa
{
	
	funcao inicio()
	{
		// 01- problema "notas"
		
		real nota1, nota2, nota_final

		escreva ("digite a primeira nota : ")
		leia (nota1)

		escreva ("digite a segunda nota : ")
		leia (nota2)

		nota_final = nota1 + nota2

		escreva ("nota final = " + nota_final + "\n")

		se (nota_final < 60)
		{
			escreva ("reprovado!")
		}

		senao
		{
			escreva ("aprovado!")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */