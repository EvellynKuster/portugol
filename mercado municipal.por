programa
{
	caracter confirmar
	cadeia nome, nome_produto [1000]
	inteiro tipo_de_caixa=0, i=0, forma_de_pagamento, porcentagem, quantidade [1000], controle = 0
	real soma_produtos = 0.0, dinheiro_entregue, troco, total_descontado, falta, preco [1000]
	
	funcao inicio()
	{
		linha()
		escreva ("\n\n                        MERCADO MUNICIPAL \n")
		escreva ("                    - - - - - - ❤ - - - - - -")
		escreva ("\n                        CAIXA ELETRÔNICO \n")
		linha()

		escreva ("\n\nBem vindo colaborador, digite seu nome para começar o seu turno: ")
		leia (nome)

		linha_pontilhada()
		escolher_caixa()

	}

	funcao escolher_caixa()
	{
		escreva ("\n\nOlá " + nome + " , escolha o tipo de caixa que irá trabalhar")

		escreva ("\n\n 1- Caixa rápido \n")
		escreva (" 2- Caixa convencional \n")
		escreva (" 3- Sair do sistema \n\n")
		leia (tipo_de_caixa)

		escolha (tipo_de_caixa)
		{
			caso 1:
			{
				caixa_rapido()

				pare
			}
			
			caso 2:
			{
				caixa_convencional()

				pare
			}
		
			caso 3:
			{
				escreva ("saiu do sistema")

				pare
			}
	
			caso contrario:
			{
				escreva ("\nEssa opção está indisponivel \n")
				escreva ("Vou redirecionar você a escolha de caixa novamente \n")

				linha()
				
				escolher_caixa()
				
				pare
			}
		}
	}

	funcao caixa_rapido()
	{
		escreva ("BEM-VINDO AO CAIXA RÁPIDO ❤\n")
		escreva("Quantos produtos você tem no carrinho?\n")
		leia(quantidade [controle])

		se(quantidade [controle] > 15)
		{
			escreva("Número de produtos maior que o limite, você deve trocar de caixa\n")
			inicio()
		}
		
		para(i = 1; i <= quantidade [controle]; i++)
		{
			escreva("Qual o nome do produto?\n")
			leia(nome_produto[controle])
			
			escreva("Qual a quantidade do produto?\n")
			leia(quantidade[controle])

			escreva("Qual o preço do produto?\n")
			leia(preco [controle])

			controle++
		}
				
	}	

	funcao caixa_convencional()
	{
		escreva ("BEM-VINDO AO CAIXA CONVENCIONAL ❤\n")
		
		faca 
		{			
				
			escreva ("Informe o nome do produto:\n")
			leia (nome_produto[controle])
		
			escreva ("Informe a quantidade de " + nome_produto[controle] + ":\n")
			leia (quantidade[controle])

			escreva ("Informe o preço unitário do produto " + nome_produto[controle] + ":\n")
			leia (preco [controle])

			escreva ("Ainda tem coisas no carrinho ? (s/n)\n")
			leia (confirmar)

			soma_produtos = soma_produtos + preco [controle] * quantidade[controle]

			controle ++
			i ++	
		}
		enquanto (confirmar == 'S' ou confirmar == 's')	
		lista_produtos ()
		
	}

	
	funcao pagamento()
	{
		escreva ("\nQual vai ser a forma de pagamento? \n")
		escreva ("1- Dinheiro \n")
		escreva ("2- Pix \n")
		escreva ("3- Cartão de débito \n")
		escreva ("4- Cartão de crédito \n")
		escreva ("\nOpção: ")
		leia (forma_de_pagamento)

		escolha (forma_de_pagamento)
		{
			caso 1:
			{
				pagamento_com_dinheiro()
				pare
			}

			caso 2:
			{
				pagamento_com_pix()
				pare
			}

			caso 3:
			{
				pagamento_com_debito()
				pare
			}

			caso 4:
			{
				pagamento_com_credito()
				pare
			}

			caso contrario:
			{
				escreva ("Não existe essa opção de pagamento. \n")
				escreva ("Vou retornar você ao menu")
				pagamento()
			}
		}

		
	}

	funcao pagamento_com_dinheiro()
	{
		escreva ("Você escolheu dinheiro \n")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nCom quantos reais você quer pagar?")
		leia (dinheiro_entregue)

		se (dinheiro_entregue < soma_produtos)
		{
			falta = dinheiro_entregue - soma_produtos
			escreva ("O dinheiro que você me entregou não é suficiente, ainda faltam R$" + falta)
			escreva ("\nVou te redirecionar ao menu")
			pagamento_com_dinheiro()
		}

		senao
		{
			troco = dinheiro_entregue - soma_produtos

			escreva ("Certinho, o seu troco é R$" + troco)
		}
	}
	
	funcao pagamento_com_pix()
	{
		porcentagem = (soma_produtos * 12) / 100
		total_descontado = soma_produtos - porcentagem
		
		escreva ("Você escolheu pix \n")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nDesconto aplicado: 12%\n")
		escreva ("valor a pagar: " + total_descontado)

	}

	funcao pagamento_com_debito()
	{
		porcentagem = (soma_produtos * 12) / 100
		total_descontado = soma_produtos - porcentagem
		
		escreva ("Você escolheu cartão de débito")
		escreva ("Total da compra: " + soma_produtos)
		escreva ("\nDesconto aplicado: 12%\n")
		escreva ("valor a pagar: " + total_descontado)

	}

	funcao pagamento_com_credito()
	{
		escreva ("Você escolheu cartão de crédito \n")
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
	
		senao se (parcelas > 1 e parcelas <= 4)
		{
			total_descontado = soma_produtos
			valor_parcela = total_descontado / parcelas
						
			escreva ("Total da compra: " + soma_produtos)
			escreva ("\nDesconto aplicado: Não tem desconto nem júros")
			escreva ("\nValor a pagar: " + total_descontado)
			escreva ("\nValor da parcela: " + valor_parcela)
			escreva ("Você está satisfeito com essa quantidade de parcelas? (s)sim ou (n)não")
			leia (confirmar)

			se (confirmar == 'n' ou confirmar == 'N')
			{
				escreva ("Okay, vou te redirecionar.")
				pagamento_com_credito()
			}

			senao
			{
				lista_produtos()
			}
		}
	
		senao se (parcelas > 4 e parcelas <= 12)
		{
			porcentagem = (soma_produtos * 1.99) / 100
			total_descontado = soma_produtos + porcentagem
			valor_parcela = total_descontado / parcelas
							
			escreva ("Total da compra: " + soma_produtos)
			escreva ("\nJúros aplicado: 1.99%")
			escreva ("\nValor total a pagar: " + total_descontado)
			escreva ("\nValor da parcela: " + valor_parcela)
		}

		senao
		{
			escreva ("Essa quantidade de parcelas não está disponível \n")
			escreva ("Vou te redirecionar")
			pagamento_com_credito()
		}
	}


	funcao lista_produtos ()
	{

		escreva ("\n")
		escreva ("LISTA DE PRODUTOS \n")
		linha_pontilhada ()
		escreva ("\n")
		linha_pontilhada ()
		escreva ("\n")

		para (i = 0; i <= controle; i++)
		{
			escreva ("\n")		
			escreva (nome_produto[i])
			escreva ("  ")
			escreva ( quantidade[i])
			escreva ("x")
			escreva ("  ")
			escreva(preco[i])
			escreva ("\n")		
			
		}
			linha_pontilhada ()
			escreva ("\n")		
			linha_pontilhada ()
			escreva ("\n")	
				
			escreva ("\nTOTAL DA COMPRA : " + soma_produtos)
							
	}

	
	funcao cedulas_de_troco()
	{
		inteiro quantidade_cedulas[10], quantidade_moedas[10]
		real tipos_cedulas[6], tipos_moedas[5]
		
		tipos_cedulas[1] = 0
		tipos_cedulas[2] = 0
		tipos_cedulas[3] = 0
		tipos_cedulas[4] = 0
		tipos_cedulas[5] = 0
		tipos_cedulas[6] = 0

		tipos_moedas[1] = 0
		tipos_moedas[2] = 0
		tipos_moedas[3] = 0
		tipos_moedas[4] = 0
		tipos_moedas[5] = 0

		faca
		{
			troco = troco - 100
			tipos_cedulas[1] = tipos_cedulas[1] + 1
		}
		enquanto (troco >= 100)

		faca
		{
			troco = troco - 50
			tipos_cedulas[2] = tipos_cedulas[2] + 1
		}
		enquanto (troco >= 50)

		faca
		{
			troco = troco - 20
			tipos_cedulas[3] = tipos_cedulas[3] + 1
		}
		enquanto (troco >= 20)

		faca
		{
			troco = troco - 10
			tipos_cedulas[4] = tipos_cedulas[4] + 1
		}
		enquanto (troco >= 10)

		faca
		{
			troco = troco - 5
			tipos_cedulas[5] = tipos_cedulas[5] + 1
		}
		enquanto (troco >= 5)

		faca
		{
			troco = troco - 2
			tipos_cedulas[6] = tipos_cedulas[6] + 1
		}
		enquanto (troco >= 2)

		faca
		{
			troco = troco - 1
			tipos_moedas[1] = tipos_moedas[1] + 1
		}
		enquanto (troco >= 1)
		
		faca
		{
			troco = troco - 0.50
			tipos_moedas[2] = tipos_moedas[2] + 1
		}
		enquanto (troco >= 0.50)

		faca
		{
			troco = troco - 0.25
			tipos_moedas[3] = tipos_moedas[3] + 1
		}
		enquanto (troco >= 0.25)

		faca
		{
			troco = troco - 0.10
			tipos_moedas[4] = tipos_moedas[4] + 1
		}
		enquanto (troco >= 0.10)

		faca
		{
			troco = troco - 0.05
			tipos_moedas[5] = tipos_moedas[5] + 1
		}
		enquanto (troco >= 0.05)	
	}

	funcao exibir_cedulas_de_troco()
	{
		se (tipos_cedulas[1] > 0)
		{
			escreva (tipos_cedulas[1] + "X 100 reais \n")
		}

		se (tipos_cedulas[2] > 0)
		{
			escreva (tipos_cedulas[2] + "X 50 reais \n")
		}

		se (tipos_cedulas[3] > 0)
		{
			escreva (tipos_cedulas[3] + "X 20 reais \n")
		}

		se (tipos_cedulas[4] > 0)
		{
			escreva (tipos_cedulas[4] + "X 10 reais \n")
		}

		se (tipos_cedulas[5] > 0)
		{
			escreva (tipos_cedulas[5] + "X 5 reais \n")
		}

		se (tipos_cedulas[6] > 0)
		{
			escreva (tipos_cedulas[6] + "X 2 reais \n")
		}

		se (tipos_moedas[1] > 0)
		{
			escreva (tipos_moedas[1] + "X 1 real \n")
		}

		se (tipos_moedas[2] > 0)
		{
			escreva (tipos_moedas[2] + "X 50 centavos \n")
		}

		se (tipos_moedas[3] > 0)
		{
			escreva (tipos_moedas[3] + "X 25 centavos \n")
		}

		se (tipos_moedas[4] > 0)
		{
			escreva (tipos_moedas[4] + "X 10 centavos \n")
		}

		se (tipos_moedas[5] > 0)
		{
			escreva (tipos_moedas[5] + "X 5 centavos \n")
		}
	}

	
	funcao linha()
	{
		para (i=1; i<=70; i++)
		{
			escreva ("_")
		}
	}

	funcao linha_pontilhada()
	{
		para (i=1; i<=70; i++)
		{
			escreva ("-")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1311; 
 * @DOBRAMENTO-CODIGO = [7, 34, 41, 48, 55, 32, 23, 75, 81, 69, 101, 97, 139, 145, 151, 157, 163, 137, 127, 181, 174, 197, 209, 227, 249, 255, 237, 261, 273, 221, 292, 282, 332, 339, 346, 353, 360, 367, 374, 381, 388, 395, 402, 314, 412, 417, 422, 427, 432, 437, 442, 447, 452, 457, 462, 410, 469, 477];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */