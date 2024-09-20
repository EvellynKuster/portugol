programa
{
	
	funcao inicio()
	{
		//12-problema "TEMPO_DE_JOGO"
		
		inteiro hora_inicio, hora_fim, tempo_total

		const inteiro DIA = 24

		escreva ("que horas seu jogo começou? ")
		leia (hora_inicio)

		escreva ("que horas seu jogo terminou? ")
		leia (hora_fim)

		se (hora_inicio > hora_fim)
		{
			tempo_total = hora_fim + DIA - hora_inicio
			
			escreva ("Seu jogo durou " + tempo_total + " hora(s)")
		}

		se (hora_inicio == hora_fim)
		{
			tempo_total = hora_inicio - hora_fim + DIA
			
			escreva ("Seu jogo durou " + tempo_total + " hora(s)")
		}

		se (hora_inicio < hora_fim)
		{
			tempo_total = hora_fim - hora_inicio

			escreva ("Seu jogo durou " + tempo_total + " hora(s)")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */