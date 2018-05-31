Before '@ChecarPaginaLogin' do
    expect(page).to have_current_path('http://projectpro.com.br/eproject.aspx', url: true)
    
    @lblLogin = find(:css, 'div[class="font14 textuppercase"]')
    @lblUsuario = find('#lblUsuario')
    @lblSenha = find('#lblSenha')

    expect(@lblLogin.text).to eql 'LOGIN'
    expect(@lblUsuario.text).to eql 'Usuário:'
    expect(@lblSenha.text).to eql 'Senha:'
end

After '@Deslogar' do
    find('#ucIndicativoLogin_lnkSair').click
end
