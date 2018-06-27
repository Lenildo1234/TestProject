# env = File.absolute_path('env.rb')
# hooks = File.absolute_path('hooks.rb')

require './support/env.rb'
require './support/hooks.rb'

#Usuário Inválido
Dado("que eu tenho um usuário inválido") do |table|
    @uInv = table.rows_hash['uInv']
    @sInv = table.rows_hash['sInv']
    visit('http://projectpro.com.br/eproject.aspx')
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

Então("screenshot usuario invalido") do
  page.save_screenshot('usuario_INVALIDO_'+Time.now.strftime("%d-%m-%Y %H:%M:%S")+'.png') #comando pré-definido do cucumber | Time.now.strftime("%d-%m-%Y %H:%M")
end