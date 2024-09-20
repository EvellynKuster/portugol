programa
{
	
	funcao inicio()
	{
		//10-problema 'lanchonete'
		
		inteiro codigo, quantidade
		real preco, valor_total

		preco = 0

		escreva ("Código do produto comprado: ")
		leia (codigo)

		escolha (codigo)
		{
			caso 1 : preco = 5.00 pare
			caso 2 : preco = 3.50 pare
			caso 3 : preco = 4.80 pare
			caso 4 : preco = 8.90 pare
			caso 5 : preco = 7.32 pare
			caso contrario : escreva ("Não existem produtos com esse código")  pare
		}

		escreva ("Quantidade comprada: ")
		leia (quantidade)

		valor_total = quantidade * preco

		escreva ("valor a pagar: R$ " + valor_total)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */