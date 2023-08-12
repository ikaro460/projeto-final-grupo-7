programa // projeto final
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	const cadeia PRODUTOS[3][3] = {{"Parapente", "Paraquedas", "Asadelta"}, // categoria AR
							{"Trilha", "Escalada", "Sandboard"},  // categoria TERRA
							{"Rafting", "Windsurf", "Stand up paddle"}} // categoria AGUA 

	const cadeia INFO_DOS_PRODUTOS_AR[3][3] = {
								//CATEGORIA 1
								{"Parapente é um esporte aéreo que consiste em voar com uma asa flexível", 
								"11", //
								"300.00"}, // produto 1 - categoria 1

								{"Um paraquedas é um dispositivo usado para diminuir a velocidade de queda de um objeto ou pessoa", 
								"12",
								"500.00"},  // produto 2 - categoria 1
	
								{"Asa delta é um esporte aéreo em que o piloto é suspenso por uma asa flexível", 
								"13",
								"250.00"} // produto 3 - categoria 1
								}
								
	const cadeia INFO_DOS_PRODUTOS_TERRA[3][3] = {

								//CATEGORIA 2
								{"Uma trilha de montanha é uma trilha que leva a uma montanha ou outro ponto alto.", 
								"21",
								"50.00"}, // produto 1 - categoria 2

								{"Escalada é o ato de subir uma superfície íngreme, como uma montanha, uma falésia ou uma parede.", 
								"22",
								"100.00"}, // produto 2 - categoria 2

								{"Sandboard é um esporte que consiste em descer dunas de areia usando uma prancha semelhante a uma prancha de snowboard.", 
								"23",
								"100.00"} // produto 3 - categoria 2
								}						

	const cadeia INFO_DOS_PRODUTOS_AGUA[3][3] = {
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

	// INFO DOS PRODUTOS
	const inteiro TAMANHO_DO_VETOR_DE_PRODUTOS[2] = {9, 4}
	const cadeia INFO_DOS_PRODUTOS[9][4] = {
										{"Parapente",
										"Parapente é um esporte aéreo que consiste em voar com uma asa flexível", 
										"11", //
										"R$ 1285.99"}, // produto 1 - categoria 1

										{"Paraquedas",
										"Um paraquedas é um dispositivo usado para diminuir a velocidade de queda de um objeto ou pessoa", 
										"12",
										"R$ 500.00"},  // produto 2 - categoria 1
		
										{"Asa delta",
										"Asa delta é um esporte aéreo em que o piloto é suspenso por uma asa flexível", 
										"13",
										"R$ 250.00"}, // produto 3 - categoria 1

																//CATEGORIA 2
										{"Trilha",
										"Uma trilha de montanha é uma trilha que leva a uma montanha ou outro ponto alto.", 
										"21",
										"R$ 50.00"}, // produto 1 - categoria 2
	
										{"Escalada",
										"Escalada é o ato de subir uma superfície íngreme, como uma montanha, uma falésia ou uma parede.", 
										"22",
										"R$ 100.00"}, // produto 2 - categoria 2

										{"Sandboard",
										"Sandboard é um esporte que consiste em descer dunas de areia usando uma prancha semelhante a uma prancha de snowboard.", 
										"23",
										"R$ 100.00"}, // produto 3 - categoria 2

										//CATEGORIA 3
										{"Rafting",
										"O rafting é uma atividade aquática que consiste em descer um rio em um bote inflável.", 
										"31",
										"R$ 100.00"}, // produto 1 - categoria 3

										{"Windsurf",
										"Windsurf é um esporte aquático que consiste em navegar sobre a água usando uma prancha e uma vela.", 
										"32",
										"R$ 100.00"}, // produto 2 - categoria 3

										{"Stand up paddle",
										"Stand up paddle (SUP) é um esporte aquático que consiste em remar em pé sobre uma prancha de surf.", 
										"33",
										"R$ 100.00"} // produto 3 - categoria 3

										
									}

	// USUARIOS
	const inteiro TAMANHO_DO_VETOR_DE_USUARIOS[2] = {2, 6}
	cadeia usuariosCadastrados[2][6] = {{"aurelio","caique","estevao","felipe","icaro","deby"}, // usuarios
								{"123","123","123","123","123","123"}} // senhas
	
	
	cadeia usuario, usuarioCerto, senha, senhaCerta, confirma, opcao = "", usuarioInserido, senhaInserida
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
		limpa()
		
		para(inteiro i = 0; i < TAMANHO_DO_VETOR_DE_USUARIOS[1]; i++){
			se(usuarioInserido == usuariosCadastrados[0][i] e senhaInserida == usuariosCadastrados[1][i]){
				loginAutorizado = verdadeiro
			}
		}
	}

	funcao menuPrincipal(){

		inteiro categoriaEscolhida
		inteiro produtoEscolhido
		
		escreva("Menu Principal\nBem vindo ", usuarioInserido, "!\n\n")
		escreva("Categorias disponíveis:\n\n")

		para(inteiro i = 0; i < 3; i++){
			escolha(i){
				caso 0:
					escreva("1. Ar\n")
				pare
				caso 1:
					escreva("2. Terra\n")
				pare
				caso 2:
					escreva("3. Água\n")
				pare							
			}
		}
		leia(categoriaEscolhida)
		limpa()
		para(inteiro i = 0; i < 3; i++){
			escreva(i+1, ". ", PRODUTOS[categoriaEscolhida - 1][i], "\n")
		}
		escreva("\n")

		leia(produtoEscolhido)
		limpa()

		//menuProduto(categoriaEscolhida, produtoEscolhido)

		inteiro productId = acharProduto(PRODUTOS[categoriaEscolhida-1][produtoEscolhido-1])
		menuProduto(productId)
		
	}

	funcao menuProduto(inteiro produto){
		para(inteiro i = 0; i < TAMANHO_DO_VETOR_DE_PRODUTOS[1]; i++){
			escolha(i){
				caso 0:
					escreva("Nome do produto:\n")
				pare
				caso 1:
					escreva("Descrição:\n")
				pare
				caso 2:
					escreva("Quantidade:\n")
				pare
				caso 3:
					escreva("Preço:\n")
				pare
			}
			escreva(INFO_DOS_PRODUTOS[produto][i], "\n\n")
		}
	}
	
	funcao inteiro acharProduto(cadeia produto){

		inteiro resultado = -1
		
		para(inteiro i = 0; i < TAMANHO_DO_VETOR_DE_PRODUTOS[0]; i++){
			se(INFO_DOS_PRODUTOS[i][0] == produto){
				resultado = i
			}
		}
		retorne resultado
	}
	
	funcao inicio()

	
	
	{

		//escreva(preencherVetorDeProdutos(INFO_DOS_PRODUTOS_AR, 3, 3))
		escreva("Deseja entrar na loja? \nDigite S para sim ou N para não\n")
		leia(texto)
		limpa()
		se(texto=='N' ou texto=='n'){
			escreva("Saindo do sistema!")
		}
		senao{
			menuInicial()
			leia(opcao)
			limpa()
		}

		// MENU LOGIN
		se(opcao == "1"){
			login()
		}

		// MENU PRINCIPAL
		se(loginAutorizado ==  verdadeiro){
			menuPrincipal()
		}senao{
			escreva("Login Inválido!")
			u.aguarde(1000)
		}
	}
	// teste aurelio
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6119; 
 * @DOBRAMENTO-CODIGO = [10, 25, 41, 58, 111, 119, 126, 151, 201, 213];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {categoriaEscolhida, 146, 10, 18}-{produtoEscolhido, 147, 10, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */