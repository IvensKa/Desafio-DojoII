#language: pt
#utf-8

Funcionalidade: Realizar Cadastro
Eu como usuário do suiteCRM
Quero cadastrar uma nova task
Para acesso as funcionalidades

Contexto: acessar home do site
	Dado que esteja no site suiteCRM

@Cadastro
Esquema do Cenario: Cadastrar
	Quando realizar um novo cadastro de task "<assunto>", "<descricao>", "<status>"
	Entao cadastro '<assunto>' realizado com sucesso

	Exemplos:
	|	assunto    |			 descricao			   |status		|
	| Primeira task| Essa é a primeira task cadastrada |In Progress |
	| Segunda task | Essa é a segunda task cadastrada  |In Progress |

@Editar
Esquema do Cenario: Editar
	Quando editar uma '<task>' cadastrada "<assunto>", "<descricao>"
	Entao '<assunto>' atualizada com sucesso

	Exemplos: 
	|	 task 	  | 		assunto 	   | 			descricao 			|
	|Primeira task| Primeira task editada  | Essa é a primeira task editada |
	|Segunda task | Segunda task editada   | Essa é a segunda task editada  |

@Exclusao
Esquema do Cenario: Excluir
	Quando excluir uma "<atividade>" cadastrada
	Entao "<atividade>" excluida com sucesso

	Exemplos:
	|		atividade		|
	|Primeira task editada 	|
	|Segunda task editada 	|