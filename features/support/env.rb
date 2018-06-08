require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium/webdriver'
require 'capybara/poltergeist'
require 'rspec'
require 'rubocop'


#Definindo como Global
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

=begin
Capybara.register_driver :headless_chrome do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {'args' => ['--headless']}
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :headless_chrome
    config.javascript_driver = :headless_chrome
    config.app_host = 'http://projectpro.com.br/eproject.aspx'
end
=end



#Configuração do Chrome Driver
Capybara.register_driver :selenium do |app|
    mobile_emulation = { "deviceName" => "iPhone 6" }
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {
                #'mobileEmulation' => mobile_emulation,
                'args' => ['--window-size=1240,1200']#'--disable-inforbars'
            }
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
    config.app_host = 'https://jogos.uol.com.br'
end
