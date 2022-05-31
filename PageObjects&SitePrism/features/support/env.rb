require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => 
    {"args" => ["--incognito", "--ignore-ssl-errors","--start-maximized", "--window-size=1420,835", "--ignore-certificate-errors",
        "disable-popup-blocking", "--no-sandbox", "--acceptInsecureCerts=true", "--disable-translate", "--disable-gpu",
        "--debug_level=3", "--disable-impl-side-painting"]})

    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
        caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90

    puts 'Raising driver'
    Capybara::Selenium::Driver.new(app, :browser => :chrome, capabilities: caps, http_client: client)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10