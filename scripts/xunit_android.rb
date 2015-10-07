# this test show you how to use scroll and locate element by xpath
# it open the system settings ui, and click the 'About phone' item to find android version
# create by testerhome.com
# author: seveniruby
#
# run using:
# bundle exec ruby xunit_android.rb

require 'rubygems'
require 'test/unit'
require 'appium_lib'

# Pradeep: The deviceName capability value is ignored, yet it was required
# https://github.com/appium/appium/blob/master/docs/en/writing-running-appium/caps.md

class SettingsTest < Test::Unit::TestCase
  def setup

    # caps   = { caps:       { platformName: 'Android',
    #                          deviceName: 'Nexus_5_API_23_x86',
    #                          avd: 'Nexus_5_API_23_x86',
    #                          appActivity: '.Settings',
    #                          appPackage: 'com.android.settings' },
    #            appium_lib: { sauce_username: nil,
    #                          sauce_access_key: nil } }

    # Load the desired configuration from appium.txt, create a driver then
    puts Dir.pwd
    caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
    driver = Appium::Driver.new(caps)
    Appium.promote_appium_methods self.class
    driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds
  end

  def teardown
    driver_quit
  end

  def test_about_phone_version
    # This may be 'About phone' or 'About tablet'
    # search for About to work on both phones & tablets.
    scroll_to('About ').click
    android_version = 'Android version'
    scroll_to android_version

    view    = 'android.widget.TextView'
    version = xpath(%Q(//#{view}[preceding-sibling::#{view}[@text="#{android_version}"]])).text
    valid   = !version.match(/\d/).nil?

    puts "Version is: #{version}"
    assert_equal true, valid
  end
end
