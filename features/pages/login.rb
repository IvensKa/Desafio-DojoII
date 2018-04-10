class Login<SitePrism::Page
	set_url "https://demo.suiteondemand.com/index.php?action=Login&module=Users&login_module=Home&login_action=index"
	element :user, "input#user_name"
	element :password, "input#username_password"
	element :login_button, "input#bigbutton"


	def logar (nome, senha)
		user.set(nome)
		password.set(senha)
		login_button.click
	end

end