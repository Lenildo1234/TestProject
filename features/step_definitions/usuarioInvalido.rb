require '/home/peo_lsilva/Desktop/testes/support/env.rb'
require '/home/peo_lsilva/Desktop/testes/support/hooks.rb'

#Usuário Inválido
Dado("que eu tenho um usuário inválido") do |table|
    @uInv = table.rows_hash['uInv']
    @sInv = table.rows_hash['sInv']
    visit('')
    sleep 10000
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
  