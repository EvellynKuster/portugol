programa
{
	
	funcao inicio()
	{
		//05-problrma "troco_verificado"
		
		real preco, dinheiro, troco, total, valor_restante
		inteiro quantidade

		escreva ("preço do seu produto : R$")
		leia (preco)

		escreva ("quantidade que você comprou : ")
		leia (quantidade)

		escreva ("dinheiro recebido : R$")
		leia (dinheiro)

		total = (preco * quantidade)

		troco = dinheiro - total

		valor_restante = total - dinheiro

		se (total > dinheiro)
		{
			escreva("dinheiro insuficiente! faltam R$" + valor_restante)
		}

		senao se (total == dinheiro) 
		{
			escreva("compra realizada com sucesso! obrigada pela preferência")
		}

		senao
		{
			escreva("compra realizada com sucesso! obrigada pela preferência, aqui está seu troco, R$" + troco)
		}

		

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 183; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */