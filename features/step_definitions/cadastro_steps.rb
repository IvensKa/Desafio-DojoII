Dado("que esteja no site suiteCRM") do
  @login = Login.new
  @login.load
  @login.logar("will", "will")
end

Quando("realizar um novo cadastro de task {string}, {string}, {string}") do |string, string2, string3|
	@creat = Cad.new
	@creat.create.click
	@creat.task.click_link('Create Task')
	@creat.assunto.set(string)
	@creat.descricao.set(string2)
	@creat.status.select(string3)
	@creat.submit.click
end

Entao("cadastro {string} realizado com sucesso") do |string|
  @creat = Cad.new
  @creat.Valida(string)
end

Quando("editar uma {string} cadastrada {string}, {string}") do |string, string2, string3|
	@creat = Cad.new
	@creat.atividades.click
	@creat.menu.click_link('Tasks')
	@creat.filtro2.click
	@creat.edit_assunto.set(string)
	@creat.buscar.click
	@creat.Edita(string)
	@creat.acoes.click
	@creat.menu_acoes.click
	@creat.assunto.set(string2)
	@creat.descricao.set(string3)
	@creat.submit.click
end

Entao("{string} atualizada com sucesso") do |string|
  	@creat = Cad.new
	@creat.Valida(string)
end


Quando("excluir uma {string} cadastrada") do |string|
	@creat = Cad.new
	@creat.atividades.click
	@creat.menu.click_link('Tasks')
	@creat.filtro2.click
	@creat.edit_assunto.set(string)
	@creat.buscar.click
	@creat.Edita(string)
	@creat.acoes.click
	@creat.menu_delete.click
	page.driver.browser.switch_to.alert.accept
end

Entao("{string} excluida com sucesso") do |string|
	@creat = Cad.new
	@creat.atividades.click
	@creat.menu.click_link('Tasks')
	@creat.filtro2.click
	@creat.edit_assunto.set(string)
	@creat.buscar.click
end