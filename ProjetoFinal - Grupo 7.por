programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	cadeia usuario, usuarioCerto, senha, senhaCerta, confirma, opcao = "", usuarioInserido, senhaInserida

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
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */