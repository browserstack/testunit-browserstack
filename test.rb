require 'rubygems'
require 'selenium-webdriver'
require 'test-unit'
require 'browserstack/local'

class SampleTests < Test::Unit::TestCase
    def setup
        caps = Selenium::WebDriver::Remote::Capabilities.new
        caps["browser"] = "#{ENV['browser']}"
        caps["browser_version"] = "#{ENV['browser_version']}"
        caps["os"] = "#{ENV['os']}"
        caps["browserstack.local"] = "false"
        if caps['browserstack.local'] && caps['browserstack.local'] == 'true';
            @bs_local = BrowserStack::Local.new
            bs_local_args = { "key" => "#{BROWSERSTACK_KEY}", "forcelocal" => true }
            @bs_local.start(bs_local_args)
        end

        url = "http://#{BROWSERSTACK_USERNAME}:#{BROWSERSTACK_KEY}@hub.browserstack.com/wd/hub"
        @driver = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => caps)
    end

    def test_post
        @driver.get "https://rubygems.org/gems/selenium-webdriver" 
        title = @driver.title()
        assert_equal(title, "selenium-webdriver | RubyGems.org | your community gem host")
    end

    def teardown
        @driver.quit
        @bs_local.stop unless @bs_local.nil?  
    end
end