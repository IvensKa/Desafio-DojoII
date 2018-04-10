class Cad<SitePrism::Page
	set_url "https://demo.suiteondemand.com/index.php?module=Home&action=index"
	element :create, '#quickcreatetop'
	element :task, 'ul.dropdown-menu'
	element :assunto, 'input#name'
	element :descricao, 'textarea#description'
	element :submit, 'input#SAVE', match: :first
	element :status, 'select#status'
	element :tarefa, '#module-title-text'

	#Edit
	element :atividades, '#grouptab_3'
	element :menu, 'ul.dropdown-menu'
	element :filtro2, 'li.sugar_action_button a[title=Filter]', match: :first
	element :edit_assunto, 'input#name_basic'
	element :buscar, '#search_form_submit'
	element :acoes, '#tab-actions'
	element :menu_acoes, '#edit_button'
	element :menu_delete, '#delete_button'
	element :mensagem, 'p.msg'

	#delete


	def Valida (assunto)
		assert_text(assunto)
	end

	def Edita (assunto)
		click_link(assunto, match: :first)
	end
end
