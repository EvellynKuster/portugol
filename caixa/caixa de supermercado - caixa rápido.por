programa
{
	
	funcao inicio()
	{
		inteiro tipo_de_caixa, i
		real total = 0, preco = 0
		logico tem_produto = falso
		caracter repetir = 'n'
		
		escreva ("CAIXA DE SUPERMERCADO \n")

		escreva ("informe qual caixa deseja usar \n")
		escreva ("digite (1) para caixa rápido, até 10 produtos \n")
		escreva ("digite (2) para caixa ilimitado \n")
		leia (tipo_de_caixa)

		escolha (tipo_de_caixa)
		{
			caso 1:
			{
				faca
				{
					escreva ("bem vindo ao caixa rápido de até 10 produtos \n")
					
					para (i = 1; i <= 10; i++)
					{
						escreva ("preço do " + i + "° produto: ")
						leia (preco)
	
						total = total + preco
	
						escreva ("você ainda tem produtos no carrinho? \n")
						leia (tem_produto)
						se (tem_produto == falso)
						{
							i = 11
						}
					}
					escreva ("o total da sua compra foi de R$" + total + "\n")
					escreva ("deseja trocar de caixa? (s)sim ou (n)não \n")
					leia (repetir)
						
				}
				enquanto (repetir == 's')
				limpa()
				inicio()
				pare
			}
			
			caso 2: escreva ("escolheu 2") pare
			
			caso contrario:
			{
				escreva ("opção inválida")
				limpa()
				inicio() 
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tipo_de_caixa, 6, 10, 13}-{i, 6, 25, 1}-{total, 7, 7, 5}-{preco, 7, 18, 5}-{tem_produto, 8, 9, 11}-{repetir, 9, 11, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */