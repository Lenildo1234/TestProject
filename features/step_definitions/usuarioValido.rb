#Usuário Válido
Dado("que eu tenho um usuário válido") do |table|
  @uVal = table.rows_hash['uVal']
  @sVal = table.rows_hash['sVal']
  visit('')
  #sleep 90000
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


