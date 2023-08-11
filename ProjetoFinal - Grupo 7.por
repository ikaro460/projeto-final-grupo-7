programa // projeto final
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	const cadeia PRODUTOS[3][3] = {{"Parapente", "Paraquedas", "Asadelta"}, // categoria AR
							{"Trilha", "Escalada", "Sand board"},  // categoria TERRA
							{"Rafting", "Windsurf", "Stand up paddle"}} // categoria AGUA 

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
	
	
	inteiro categoriaEscolhida
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
		
		para(inteiro i = 0; i < TAMANHO_DO_VETOR[1]; i++){
			se(usuarioInserido == usuariosCadastrados[0][i] e senhaInserida == usuariosCadastrados[1][i]){
				loginAutorizado = verdadeiro
			}
		}
	}

	funcao menuPrincipal(){
		escreva("Menu Principal\nBem vindo ", usuarioInserido, "!\n\n")
		escreva("Categorias disponíveis:\n\n")

		para(inteiro i = 0; i < 3; i++){
			escolha(i){
				caso 0:
					escreva("1. AR - ")
				pare
				caso 1:
					escreva("2. TERRA - ")
				pare
				caso 2:
					escreva("3. ÁGUA - ")
				pare
				
						
			}
			para(inteiro j = 0; j < 3; j++){
				escreva(PRODUTOS[i][j], ", ")
			}
			escreva("\n")
		}
	}

	funcao menuCategorias(inteiro categoria){
		escreva("Produtos disponíveis:\n\n")
		para(inteiro i = 0; i < 3; i++){
			escreva(PRODUTOS[categoria][i], "\n")
			para(inteiro j = 0; j < 3; j++){
				escolha(j){
					caso 0:
						escreva("Descrição: ")
					pare
					caso 1:
						escreva("Quantidade: ")
					pare
					caso 2:
						escreva("Preço: ")
					pare
				}
				escolha(categoria){
					caso 0:
						escreva("- ", INFO_DOS_PRODUTOS[i][j], "\n")
					pare
					caso 1:
						escreva("- ", INFO_DOS_PRODUTOS[i + 3][j], "\n")
					pare
					caso 2:
						escreva("- ", INFO_DOS_PRODUTOS[i + 6][j], "\n")
					pare
				}
			}
			escreva("\n")
		}	
	}
	
	funcao inicio()
	{
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
			leia(categoriaEscolhida)

			escolha(categoriaEscolhida){
				caso 1:
					menuCategorias(0)
				pare
				caso 2:
					menuCategorias(1)
				pare
				caso 3:
					menuCategorias(2)
				pare
				
			}
		}senao{
			escreva("Login falhou!")
			u.aguarde(1000)
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4594; 
 * @DOBRAMENTO-CODIGO = [53, 62, 69, 86];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 80, 15, 1}-{j, 105, 16, 1}-{categoria, 112, 31, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */