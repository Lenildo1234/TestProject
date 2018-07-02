#language: pt

Funcionalidade: Validação do Login
    Eu como usuário comum
    Quero fazer login na plataforma web do Project Pro
    Então o sistema validará se os dados informados são válidos ou não, caso sejam válidos, deverei ser redirecionado a tela principal

@Deslogar
Cenário: Fazer login com usuário VÁLIDO
    Dado que eu tenho um usuário válido
        |uVal|lenildo.silva|
        |sVal|lenildo1993  |
    Quando eu preencher os campos: USUÁRIO e SENHA, com dados válidos
    E eu clicar no botão ENTRAR
    Então o sistema deverá me redirecionar para a tela principal
    
    

@ChecarPaginaLogin
Cenário: Fazer login com usuário INVÁLIDO
    Dado que eu tenho um usuário inválido 
        |uInv|lenildo.teste|
        |sInv|12345        |
    Quando eu preencher os campos: USUÁRIO e SENHA, com os dados inválidos
    E clicar novamente no botão ENTRAR
    Então o sistema deverá exibir uma mensagem de erro
    
    
    
 