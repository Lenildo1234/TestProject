require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium/webdriver'
require 'rspec'


d = Time.now.strftime("%d") #dia
m = Time.now.strftime("%b") #mês (nome)
y = Time.now.strftime("%Y") #ano


#Definindo como Global
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

#Configuração do Chrome Driver
Capybara.register_driver :selenium do |app|
    mobile_emulation = { "deviceName" => "iPad" }
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {
                #'mobileEmulation' => mobile_emulation,
                'args' => ['--window-size=1240,1200']# --headless | --window-size=1240,1200
            }
        )  
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
    config.save_path = (path = './screenshots/'+y+'/'+m+'/'+d)
end