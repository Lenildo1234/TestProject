#Usuário Válido
Dado("que eu tenho um usuário válido") do |table|
  @uVal = table.rows_hash['uVal']
  @sVal = table.rows_hash['sVal']
  visit('')
end

Quando("eu preencher os campos: USUÁRIO e SENHA, com dados válidos") do
  fill_in 'txtUsuario', with: @uVal
  fill_in 'txtsenha', with: @sVal
end

Quando("eu clicar no botão ENTRAR") do
  find('#btnLogin').click
end

Então("o sistema deverá me redirecionar para a tela principal") do
  expect(page).to have_current_path('http://projectpro.com.br/DefaultEproject.aspx', url: true)

  @usrLogado = find('#ucIndicativoLogin_ltrNomeUsuario')
  expect(@usrLogado.text).to eql 'Olá Lenildo Nascimento da Silva'
end



#Usuário Inválido
Dado("que eu tenho um usuário inválido") do |table|
  @uInv = table.rows_hash['uInv']
  @sInv = table.rows_hash['sInv']
  visit('')
end

Quando("eu preencher os campos: USUÁRIO e SENHA, com os dados inválidos") do
  fill_in 'txtUsuario', with: 'lenildo.teste'
  fill_in 'txtsenha', with: '12345'
end

Quando("clicar novamente no botão ENTRAR") do
  find('#btnLogin').click
end

Então("o sistema deverá exibir uma mensagem de erro") do
  @lblError = find('#lblError')
  expect(@lblError.text).to eql 'Usuário ou senha inválidos.'
end
