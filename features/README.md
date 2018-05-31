# AUTOMAÇÃO COM CUCUMBER + CAPYBARA + RUBY (BDD)

## DEFINIÇÕES

* Cucumber: É um framework, escrito em Ruby, que possibilita a escrita dos cenários de testes em um arquivo .fature que utiliza a linguagem de domínio específico (DSL) Gherkin, uma linguagem muito próxima da natural. Esse arquivo poderá eventualmente a ser utilizado como parte da documentação do projeto uma vez que não é necessário conhecimentos técnicos para sua leitura e compreensão. 

* Capybara: É um framework de Testes de aceitação para aplicações web. Com ele é possível testar que dado o input A a aplicação deve retornar o output B.

* Ruby: É uma linguagem orientada a objetos. Uma de suas principais características é a expressividade que possui, pois sua linguagem é muito simples de ser lida e entendida facilitando o desenvolvimento e manutenção.

* Gemas: RubyGems ou apenas Gem é um gerenciador de pacotes Ruby que facilita a criação, compartilhamento e instalação de bibliotecas. O principal lugar onde as bibliotecas estão hospedadas é o RubyGems.org, disponibilizando bibliotecas Ruby como gems. Você pode acessar o website diretamente ou usar o comando *gem*.

* Gemfile: Arquivo utilizado para especificar as dependências do projeto (bibliotecas ou, no caso do Ruby, as gems).

* Bundler: Gerenciador de pacotes do Ruby que utiliza como referência o arquivo Gemfile, ou seja, ele é o responsável por baixar e instalar as dependências do projeto descritas nesse arquivo.


## PREPARANDO O AMBIENTE

> Obs.: Os comandos de instalação mostrados abaixo são para o gerenciador de pacote dos sistemas operacionais: Debian ou Ubuntu (e seus derivados)

Antes de começarmos a automatizar os testes de aceitação, crie uma pasta no diretório de sua preferência e dê um nome também de sua preferência, por exemplo, *TestesAutomatzados*. Após a criação da pasta raiz, acesse-a pelo terminal através do comando *CD*. Estando dentro da pasta raiz:

1. Instale a linguagem de programação Ruby

~~~~
   sudo apt-get install ruby what is not 
~~~~

2. Depois instale o Cucumber: 

~~~~
    sudo gem cucumber
~~~~

3. Ainda não pasta raiz, execute o comando abaixo para criar a estrutura de diretórios do Cucumber: 

~~~~
    cucumber --init
~~~~

4. Acesse a pasta _features_ e crie um subdiretório chamado *specifications*. Dentro desta pasta ficarão os arquivos Gherkin (.feature)

5. Acesse novamente a pasta _features_ e crie um novo arquivo .text chamado Gemfile.

6. Instale o Bundler:

~~~~
    sudo gem install bundler
~~~~

## CONFIGURANDO O PROJETO

