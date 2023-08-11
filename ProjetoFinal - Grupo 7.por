programa // projeto final
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	cadeia usuario, usuarioCerto, senha, senhaCerta, confirma, opcao = "", usuarioInserido, senhaInserida
	const cadeia PRODUTOS[3][3] = {{"Parapente", "Paraquedas", "Asadelta"}, // categoria 1
							{"Trilha", "Escalada", "Sand board"},  // categoria 2
							{"Rafting", "Windsurf", "Stand up paddle"}} // categoria 3 

	const cadeia INFO_DOS_PRODUTOS[9][3] = {
								//CATEGORIA 1
								{"Parapente é um esporte aéreo que consiste em voar com uma asa flexível", 
								"11", //
								"300.00"}, // produto 1 - categoria 1

								{"Um paraquedas é um dispositivo usado para diminuir a velocidade de queda de um objeto ou pessoa", 
								"12",
								"500.00"},  // produto 2 - categoria 1
	
								{"Asa delta é um esporte aéreo em que o piloto é suspenso por uma asa flexível", 
								"13",
								"250.00"}, // produto 3 - categoria 1

								//CATEGORIA 2
								{"Uma trilha de montanha é uma trilha que leva a uma montanha ou outro ponto alto.", 
								"21",
								"50.00"}, // produto 1 - categoria 2

								{"Escalada é o ato de subir uma superfície íngreme, como uma montanha, uma falésia ou uma parede.", 
								"22",
								"100.00"}, // produto 2 - categoria 2

								{"Sandboard é um esporte que consiste em descer dunas de areia usando uma prancha semelhante a uma prancha de snowboard.", 
								"23",
								"100.00"}, // produto 3 - categoria 2

								//CATEGORIA 3
								{"O rafting é uma atividade aquática que consiste em descer um rio em um bote inflável.", 
								"31",
								"100.00"}, // produto 1 - categoria 3

								{"Windsurf é um esporte aquático que consiste em navegar sobre a água usando uma prancha e uma vela.", 
								"32",
								"100.00"}, // produto 2 - categoria 3

								{"Stand up paddle (SUP) é um esporte aquático que consiste em remar em pé sobre uma prancha de surf.", 
								"33",
								"100.00"} // produto 3 - categoria 3
								} 

	const inteiro TAMANHO_DO_VETOR[2] = {2, 5}
	cadeia usuariosCadastrados[2][5] = {{"aurelio","caique","estevao","felipe","icaro"}, // usuarios
								{"123","123","123","123","123"}} // senhas
	caracter texto
	logico loginAutorizado

	funcao menuInicial(){
		escreva("Escolha uma opção: \n")
		escreva("1 - Fazer login\n")
		escreva("2 - Fazer cadastro\n")
		escreva("3 - Sair\n")
	}

	funcao login(){

		loginAutorizado = falso
		
		escreva("\nDigite o usuario: ")
		leia(usuarioInserido)
		escreva("\nDigite a senha: ")
		leia(senhaInserida)

		para(inteiro i = 0; i < TAMANHO_DO_VETOR[1]; i++){
			se(usuarioInserido == usuariosCadastrados[0][i] e senhaInserida == usuariosCadastrados[1][i]){
				loginAutorizado = verdadeiro
			}
		}
	}

	funcao menuPrincipal(){
		escreva("Menu principal: Bem vindo ", usuarioInserido, "!\n\n")	
	}
	
	funcao inicio()
	{
		escreva("Deseja entrar na loja? \nDigite S para sim ou N para não\n")
		leia(texto)
		se(texto=='N' ou texto=='n'){
			escreva("Saindo do sistema!")
		}
		senao{
			menuInicial()
			leia(opcao)
		}

		// MENU LOGIN
		se(opcao == "1"){
			login()
		}

		// MENU PRINCIPAL
		se(loginAutorizado ==  verdadeiro){
			menuPrincipal()
		}senao{
			escreva("Login falhou!")
			u.aguarde(1000)
		}
	}
	
//testegitbash2
//teste estevao
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */