

programa // projeto final
{

/* Elemental Adventures é uma plataforma que oferece aos seus usuários experiências ao ar livre nos mais diversos 
 *  e icônicos lugares do planeta. 
 *  Contamos com empresas e guias altamente qualificados e licenciados por órgãos internacionalmente reconhecidos, 
 *  com o objetivo de promover uma experiência segura e inesquecível aos nossos aventureiros.
    Junte-se a nós e descubra o que você é capaz de fazer.*/

	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	const inteiro TAMANHO_DO_VETOR_CARACTERES = 75
	const cadeia CARACTERES_INVALIDOS[TAMANHO_DO_VETOR_CARACTERES] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", 
														"k", "l", "m", "n", "o", "p", "q", "r", "s", "t", 
														"u", "v", "w", "x", "y", "z",
														"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", 
														"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", 
														"U", "V", "W", "X", "Y", "Z",
														"!", "@", "#", "$", 
														"%", "&", "*", "(", ")", "_", "+", "=","[", "]", 
														"{", "}", ";", ",", "/", "?", "~", ".", " "}

	const inteiro TAMANHO_DO_NUMEROS_INVALIDOS = 11
	const cadeia NUMEROS_INVALIDOS_LOGIN[TAMANHO_DO_NUMEROS_INVALIDOS] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " "}

	const cadeia PRODUTOS[3][3] = {{"Parapente", "Paraquedas", "Asa delta"}, // categoria AR
							{"Trilha", "Escalada", "Sandboard"},  // categoria TERRA
							{"Rafting", "Windsurf", "Stand up paddle"}} // categoria AGUA 

	const cadeia ARTE_DOS_PRODUTOS_AR[3][4] = {
									  {"/¨¨¨¨¨\\",
									   "/_______\\",
									   "  \\   /",
									   "   \\#/"},
									   
									   {"◜¨¨¨¨¨◝",
									   "(_     _)",
									   "  \\   /",
									   "   \\#/"},
									   
									   {"_  __  _",
									   " \\ \\##/ /",
									   "  \\ \\/ /",
									   "   \\__/"}
									   }
	const cadeia ARTE_DOS_PRODUTOS_TERRA[3][4] = {
										{"  ◜◝ ",
										"  (**)",
										"...)(...",
										"........"},

										{"  .◜◝.",
										"  /  | \\",
										" /   |  \\",
										"/____|___\\"},

										{" _________",
										" (__#__#___)",
										" :::::::::::",
										"            "}
										}
	const cadeia ARTE_DOS_PRODUTOS_AGUA [3][4] = {
										{"__       __",
										"/  \\_____/  \\",
										"\\___________/",
										"~~~~~~~~~~~~~"},

										{"   |\\ ",
										" ___|_\\___",
										"(_________)",
										"~~~~~~~~~~~"},

										{" _________",
										" (_________)",
										" ~~~~~~~~~~~",
										"            "}
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
	
	// LOGIN
	cadeia usuario, usuarioCerto, senha, senhaCerta, confirma, opcao = "", usuarioInserido, senhaInserida
	caracter texto
	logico loginAutorizado
	const cadeia mensagensDeErro[4] = {"Nome não pode conter espaços vazios!", 
								"Senha não pode conter espaços vazios!", 
								"O nome de usuario não pode conter números!", 
								"A senha de usuario não pode conter letras!"}

	// CADASTRO
	const inteiro LINHAS=3,COLUNAS=2
	cadeia cadastroCliente[LINHAS][COLUNAS]= {{"",""},{"",""},{"",""}}

	/*
		CONSTANTES E VARIÁVEIS /\

		
------------------------------------------------------------------------------
		
		
		CÓDIGO \/
	*/

	funcao tresPontos(){
		u.aguarde(250)
		escreva(".")
		u.aguarde(250)
		escreva(".")
		u.aguarde(250)
		escreva(".")
		u.aguarde(250)
		limpa()	
	}

	funcao logico verificarCaracteresInvalidos(cadeia valorInserido){
		//verifica se o valor inserido contém caracteres invalidos e retorna verdadeiro caso encontre


		//Verifica cadeia vazia
		se(valorInserido == ""){
			retorne verdadeiro
		}
		
		para(inteiro i = 0; i < TAMANHO_DO_VETOR_CARACTERES; i++){
				/*
				Nesse loop iremos percorrer toda o vetor de caracteres invalidos 
				verificando letra por letra e comparando com o valor inserido.
				*/
			se(tx.posicao_texto(CARACTERES_INVALIDOS[i], valorInserido, 0) >= 0){
				//Esse bloco verifica se contem alguma letra nos valores inseridos
				retorne verdadeiro
			}
				/*
				A funcao posicao_texto() compara se a cadeia 
				inserida pelo usuario contem o indice atual do vetor alfabeto.
				*/
		}
		retorne falso
	}

	funcao logico verificaSeContemNumeros(cadeia valorInserido){
		//verifica se o valor inserido contém caracteres invalidos e retorna verdadeiro caso encontre


		//Verifica cadeia vazia
		se(valorInserido == ""){
			retorne verdadeiro
		}
		
		para(inteiro i = 0; i < TAMANHO_DO_NUMEROS_INVALIDOS; i++){
				/*
				Nesse loop iremos percorrer toda o vetor de caracteres invalidos 
				verificando letra por letra e comparando com o valor inserido.
				*/
			se(tx.posicao_texto(NUMEROS_INVALIDOS_LOGIN[i], valorInserido, 0) >= 0){
				//Esse bloco verifica se contem alguma letra nos valores inseridos
				retorne verdadeiro
			}
				/*
				A funcao posicao_texto() compara se a cadeia 
				inserida pelo usuario contem o indice atual do vetor alfabeto.
				*/
		}
		retorne falso
	}
	
	funcao inteiro validacaoUsuarioeSenha(cadeia verificaUsuario, cadeia verificaSenha){

		
		se(verificaUsuario == "" ou tx.posicao_texto(" ", verificaUsuario, 0) >= 0){
			retorne 0
		}senao se(verificaSenha == "" ou tx.posicao_texto(" ", verificaUsuario, 0) >= 0){
			retorne 1
		}senao se(verificaSeContemNumeros(verificaUsuario) == verdadeiro){
			retorne 2
		}senao se(verificarCaracteresInvalidos(verificaSenha) == verdadeiro){
			retorne 3
		}
		
		retorne -1
	}

	funcao menuInicial(){
		escreva("Escolha uma opção: \n")
		escreva("1 - Fazer login\n")
		escreva("2 - Fazer cadastro\n")
		escreva("3 - Sair\n")
	}

	funcao login(){
		
		faca{


			//reseta loginAutorizado
			loginAutorizado = falso

			escreva("LOGIN\n\n<-- Aperte enter duas vezes para voltar a tela inicial\n\n")
		
			escreva("\nDigite o usuario: ")
			leia(usuarioInserido)
			escreva("\nDigite a senha: ")
			leia(senhaInserida)
			limpa()

			//Volta a tela inicial
			se(usuarioInserido == "" e senhaInserida == ""){
				escreva("Voltando ao tela inicial")
				tresPontos()
				pare
			}
	
			se(validacaoUsuarioeSenha(usuarioInserido, senhaInserida) == -1){ //Tratamento de erros
				
				//PROCURA USUARIOS CADASTRADOS PREVIAMENTE
				para(inteiro i = 0; i < TAMANHO_DO_VETOR_DE_USUARIOS[1]; i++){
					se(usuarioInserido == usuariosCadastrados[0][i] e senhaInserida == usuariosCadastrados[1][i]){
						loginAutorizado = verdadeiro
					}
				}
	
				//PROCURA USUARIOS CADASTRADOS POSTERIORMENTE
				para(inteiro i = 0; i < LINHAS; i++){
					se(usuarioInserido == cadastroCliente[i][0] e senhaInserida == cadastroCliente[i][1]){
						loginAutorizado = verdadeiro
					}
				}
	
				se(loginAutorizado == falso){
					escreva("Nome de usuario não encontrado!")
					u.aguarde(1000)
					limpa()	
				}
			}senao{
				escreva(mensagensDeErro[validacaoUsuarioeSenha(usuarioInserido, senhaInserida)])
				u.aguarde(1000)
				limpa()
			}
	
			//Login autorizado
			se (loginAutorizado == verdadeiro){
				escreva(" Login autorizado!")
				u.aguarde(1000)
				limpa()
			}

		}enquanto(loginAutorizado == falso)
	}

	funcao cadastro(){
		
		//contador de espaços livres
		cadeia cliente, senhaCadastro
		inteiro contador = 0
		logico usuarioCadastrado = falso
		
		//Conta os espaços livres
		para (inteiro i=0; i <LINHAS ; i++){
			se (cadastroCliente[i][0] == "" e cadastroCliente[i][1] == "" ){
				contador++
			}		
		}
		
		faca{

			escreva("CADASTRO\n\n<-- Aperte enter duas vezes para voltar a tela inicial\n\n")
			
			//Recebe os dados do cliente
			escreva ("Digite seu nome :")
			leia (cliente)
			escreva("Digite uma senha :")
			leia (senhaCadastro)
			limpa()

			se(cliente == "" ou senhaCadastro == ""){
				escreva("Voltando a tela inicial")
				tresPontos()
				pare
			}
			

			se(validacaoUsuarioeSenha(cliente, senhaCadastro) == -1){
				para (inteiro i= 0; i<LINHAS; i++){
			    		//Verifica se a posiçao esta vazia
			    		se (cadastroCliente[i][0] == "" e cadastroCliente [i][1] == ""){
			    			//Grava os dados do cliente
			    			cadastroCliente[i][0] = cliente 
			    			cadastroCliente[i][1] = senhaCadastro

			    			//Altera o valor de usuarioCadastrado
			    			usuarioCadastrado = verdadeiro
	
			    			//Mensagem de sucesso
			    			escreva("Usuário cadastrado com sucesso!")	
			    			u.aguarde(1500)
			    			limpa()
			    			pare
			    		}
		    		}
			}senao{
				escreva(mensagensDeErro[validacaoUsuarioeSenha(cliente, senhaCadastro)])
				u.aguarde(2000)
				limpa()
			}

			
		}enquanto(contador >= 0 e usuarioCadastrado == falso)
		
		se(contador == 0){
			escreva ("Cadastro lotado!")
			u.aguarde(2000)
			limpa()
		}senao se(usuarioCadastrado == verdadeiro){
			menuDesejaLogin()
		}
	}

	funcao menuDesejaLogin(){
		cadeia desejaLogin
		faca{
			//MENU DESEJA LOGIN
			escreva("Deseja fazer o login?\n\n1.Sim\n2.Não")
			leia(desejaLogin)
			limpa()

			//Tratamento de erros
			se(verificarCaracteresInvalidos(desejaLogin) == falso e desejaLogin != ""){	
				inteiro aux = tp.cadeia_para_inteiro(desejaLogin, 10)

				//Verifica opcao escolhida
				se(aux == 1){
					login()
					pare
				}senao{
					pare
				}
			}
		}enquanto(1 > 0)//loop infinito
	}
	
	funcao menuPrincipal(){

		
		inteiro categoriaEscolhida = 0
		inteiro produtoEscolhido = 0

		// auxiliares para tratamento de erros
		cadeia auxCat
		cadeia auxProd
		
		logico validacao
		
		// ESCOLHER CATEGORIA
		faca{

			validacao = verdadeiro //reseta validacao
			
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
			leia(auxCat)
			limpa()

			//PRIMEIRO TRATAMENTO DE ERRO: Verifica se contem caracteres invalidos
			se(verificarCaracteresInvalidos(auxCat) == falso){
				
				//Convertendo cadeia em inteiro
				categoriaEscolhida = tp.cadeia_para_inteiro(auxCat, 10)

				//SEGUNDO TRATAMENTO DE ERRO: Verifica se numero inserido e valido
				se(categoriaEscolhida > 3 ou categoriaEscolhida < 1){
					validacao = falso
				}
				
			}senao{
				validacao = falso	
			}

			//Mensagem de erro
			se(validacao == falso){
				escreva("Opção inválida!\n")
				u.aguarde(2000)	
			}
			
		}enquanto(validacao == falso)

		
		// ESCOLHER PRODUTO
		faca{

			validacao = verdadeiro //reseta validacao
			
			para(inteiro i = 0; i < 3; i++){
				escreva(i+1, ". ", PRODUTOS[categoriaEscolhida - 1][i], "\n")
			}
			escreva("\n")
	
			leia(auxProd)
			limpa()

						//PRIMEIRO TRATAMENTO DE ERRO: Verifica se contem caracteres invalidos
			se(verificarCaracteresInvalidos(auxProd) == falso){ 
				
				//Convertendo cadeia em inteiro
				produtoEscolhido = tp.cadeia_para_inteiro(auxProd, 10)

				//SEGUNDO TRATAMENTO DE ERRO: Verifica se numero inserido e valido
				se(produtoEscolhido > 3 ou produtoEscolhido < 1){
					validacao = falso
				}
				
			}senao{				
				validacao = falso
			}

			//Mensagem de erro
			se(validacao == falso){
				escreva("Opção inválida!\n")
				u.aguarde(2000)
			}
		}enquanto(validacao == falso)
		
		//ARTE DO PRODUTO
		para(inteiro i = 0; i < 4; i++){
			se(i == 0){
				escreva(" ")
			}
			escolha(categoriaEscolhida){
				caso 1:
					escreva(ARTE_DOS_PRODUTOS_AR[produtoEscolhido-1][i], "\n")
				pare	
				caso 2:
					escreva(ARTE_DOS_PRODUTOS_TERRA[produtoEscolhido-1][i], "\n")
				pare
				caso 3:
					escreva(ARTE_DOS_PRODUTOS_AGUA[produtoEscolhido-1][i], "\n")
				pare
			}
		}

		//menuProduto(categoriaEscolhida, produtoEscolhido)
		inteiro productId = acharProduto(PRODUTOS[categoriaEscolhida-1][produtoEscolhido-1])
		menuProduto(productId)
	}

	funcao menuProduto(inteiro produto){
		para(inteiro i = 0; i < TAMANHO_DO_VETOR_DE_PRODUTOS[1]; i++){
			escolha(i){
				caso 0:
					escreva("\n")
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
	
	funcao inicio(){
		logico sairSistema = falso
		
		faca{
		//escreva(preencherVetorDeProdutos(INFO_DOS_PRODUTOS_AR, 3, 3))
			escreva("Deseja entrar na loja? \nDigite S para sim ou N para não\n")
			leia(texto)
			limpa()
			
			se(texto=='N' ou texto=='n'){
				pare
			}senao{
				menuInicial()
				leia(opcao)
				limpa()
			}

			// MENU LOGIN
			se(opcao == "1"){
				login()
			}senao se (opcao == "2"){
				cadastro()	
			}
			
			senao{ 
				escreva ("Saindo do sistema!\nObrigado,Volte sempre!\n\n")
			pare
			}
			                            
			// MENU PRINCIPAL
			se(loginAutorizado ==  verdadeiro){
				menuPrincipal()
			}
		}enquanto(sairSistema == falso)
	}
						
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14695; 
 * @DOBRAMENTO-CODIGO = [16, 29, 33, 49, 65, 88, 141, 148, 167, 178, 204, 230, 246, 253, 313, 381, 426, 417, 467, 502, 404, 524, 544, 556];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */