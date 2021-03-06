# WHAT THIS FILE IS
# -----------------
#
# This file provides setup and common functionality across all features.  It's
# included first before every test run, and the methods provided here can be
# used in any of the step definitions used in a test.  This is a great place to
# put shared data like the location of your app, the capabilities you want to
# test with, and the setup of selenium.

require 'rspec/expectations'
require 'selenium-webdriver'

#Where our app lives, relative to this file
APP_PATH = '../resources/TestApp.app'

# What we need as a capability --> iOS device, where our app is, ect.
def desired_caps
  {
    'browserName' => '',
    'platform' => 'Mac',
    'device' => 'iPhone Simulator',
    'version' => '7.0',
    'app' => absolute_app_path
  }
end

# Make sure the path above is relative to this file
def absolute_app_path
  File.join(File.dirname(__FILE__), APP_PATH)
end

# The location of our selenium (or in this case, Appium) file
def server_url
  "http://127.0.0.1:4723/wd/hub"
end

# Set up a driver or, if one exists, return it
def selenium
  @driver ||= Selenium::WebDriver.for(:remote, :desired_capabilities => desired_caps, :url => server_url)
  #@driver.execute_script("mobile: hideKeyboard")
end

After { @driver.quit }



$devices = YAML.load(File.open('./lib/config/devices.yaml'))
$emulators = YAML.load(File.open('./lib/config/emulators.yaml'))
