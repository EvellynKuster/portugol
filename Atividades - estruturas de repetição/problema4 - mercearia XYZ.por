programa
{
		real preco, total = 0, total_descontado, porcentagem, valor_parcela, soma_produtos = 0
		caracter adicionar, encerrar
		inteiro forma_pagamento, quantidade, i, parcelas

	funcao mais_produtos()
	{
		escreva ("\nDigite o preço unitário do produto: ")
		leia (preco)
			
		escreva ("\nDigite a quantidade de unidades compradas: ")
		leia (quantidade)
	
		escreva ("\nDeseja adicionar mais produtos? (s)sim ou (n)não \n")
		leia (adicionar)

		total = preco * quantidade
		soma_produtos = total + soma_produtos
		
		se (adicionar == 's' ou adicionar == 'S')
		{
			mais_produtos()
		}

	}
	
	funcao inicio()
	{
		

		escreva ("bem vindo a mercearia XYZ! \n")

		mais_produtos()
		pagamento()

		escreva ("\nDeseja encerrar o programa? \n")
		leia (encerrar)

		se (encerrar == 'n' ou encerrar == 'N' )
		{
			limpa()
			inicio()
		}
		
	}

	funcao pagamento()
	{			
			escreva ("\nEscolha a forma de pagamento: \n")
			escreva ("1. Pix \n")
			escreva ("2. Dinheiro \n")
			escreva ("3. Cartão de Débito \n")
			escreva ("4. Cartão de Crédito \n")
	
			escreva ("\nOpção: ")
			leia (forma_pagamento)
	
			escolha (forma_pagamento)
			{
				caso 1:
				{
					pagamento_com_pix()
					pare
				}
	
				caso 2:
				{
					pagamento_com_dinheiro()
					pare
				}
	
				caso 3:
				{
					pagamento_com_cartao_debito()
					pare
				}
	
				caso 4:
				{
					pagamento_com_cartao_credito()
					pare
				}
	
				caso contrario:
				{
					escreva ("\nNão existe essa opção de pagamento\n")
					escreva ("\nvou retornar você ao menu de escolha\n")
					pagamento()
					pare
				}
			}	
	}

	funcao pagamento_com_pix()
	{
		porcentagem = (soma_produtos * 10) / 100
		total_descontado = soma_produtos - porcentagem
					
		escreva ("\nVocê escolheu pix \n")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nDesconto aplicado: 10%\n")
		escreva ("valor a pagar: " + total_descontado)
	}

	funcao pagamento_com_dinheiro()
	{
		porcentagem = (soma_produtos * 15) / 100
		total_descontado = soma_produtos - porcentagem
					
		escreva ("\nVocê escolheu dinheiro \n")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nDesconto aplicado: 15%\n")
		escreva ("Valor a pagar: " + total_descontado)
	}

	funcao pagamento_com_cartao_debito()
	{
		porcentagem = (soma_produtos * 8) / 100
		total_descontado = soma_produtos - porcentagem
					
		escreva ("\nVocê escolheu cartão de débito \n")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nDesconto aplicado: 8%\n")
		escreva ("Valor a pagar: " + total_descontado)
	}

	funcao pagamento_com_cartao_credito()
	{
		escreva ("\nVocê escolheu cartão de crédito \n")
		escreva ("Em quantas vezes você deseja parcelar?")
		leia (parcelas)
						
		se (parcelas == 1)
		{
			porcentagem = (soma_produtos * 5) / 100
			total_descontado = soma_produtos - porcentagem
							
			escreva ("Total da compra: " + soma_produtos)
			escreva ("\nDesconto aplicado: 5%")
			escreva ("\nvalor a pagar: " + total_descontado)
		}
	
		senao se (parcelas > 1 e parcelas <= 3)
		{
			total_descontado = soma_produtos
			valor_parcela = total_descontado / parcelas
						
			escreva ("Total da compra: " + soma_produtos)
			escreva ("\nDesconto aplicado: Não tem desconto nem júros")
			escreva ("\nValor a pagar: " + total_descontado)
			escreva ("\nValor da parcela: " + valor_parcela)
		}
	
		senao
		{
			porcentagem = (soma_produtos * 12) / 100
			total_descontado = soma_produtos + porcentagem
			valor_parcela = total_descontado / parcelas
							
			escreva ("Total da compra: " + soma_produtos)
			escreva ("\nJúros aplicado: 12%")
			escreva ("\nValor total a pagar: " + total_descontado)
			escreva ("\nValor da parcela: " + valor_parcela)
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @DOBRAMENTO-CODIGO = [6, 39, 27, 60, 66, 72, 78, 84, 47, 94, 105, 116, 133, 143, 154, 127];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */