require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium/webdriver'
require 'rspec'
require 'allure-rspec'
require 'logger'


#Definindo como Global
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

=begin
AllureRSpec.configure do |c|
    c.output_dir = '/home/peo_lsilva/Desktop/testes/features/reports'
    c.clean_dir = true
    c.logging_level = Logger::WARN
end

RSpec.configure do |config|
    config.expect_with :rspec do |expectations|
        expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    config.mock_with :rspec do |mocks|
        mocks.verify_partial_doubles = true
    end

    config.shared_context_metadata_behavior = :apply_to_host_groups

    config.include AllureRSpec::Adaptor
    config.include Capybara::DSL
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
                'mobileEmulation' => mobile_emulation,
                #'args' => ['--window-size=1240,1200']# --headless | --window-size=1240,1200
            }
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
    config.app_host = 'https://jogos.uol.com.br'
end


