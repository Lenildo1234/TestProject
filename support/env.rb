require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'


d = Time.now.strftime("%d") #dia
m = Time.now.strftime("%b") #mês (nome)
y = Time.now.strftime("%Y") #ano

#Definindo como Global
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

#Configuração do Navegador
Capybara.register_driver :chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
#    options.add_argument("--headless")
    options.add_argument('start-maximized')
    #options.add_emulation(device_name: 'iPhone 6')
  
    Capybara::Selenium::Driver.new(app,
      browser: :chrome,
      options: options,
      driver_path: File.absolute_path('support/browserDriver/chromedriver')
    )
end

#Configuração do Capybara
Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 30
    #config.save_path = File.absolute_path(File.join('screenshots',y,m,d))
end