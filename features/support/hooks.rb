# Before('~@non-hopster') do |scenario|
#
#   # caps_real_hopster = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
#   caps = $devices['devices']['lge-nexus_4-006ea820a10e1282']
#   caps['caps']['app'] = File.join(File.dirname(__FILE__), caps['caps']['app'])
#   puts caps
#
#   Appium::Driver.new(caps)
#   Appium.promote_appium_methods AppiumWorld
#
#
#   puts "Execute anything before scenario/test case"
#   $driver.start_driver
#
# end
#
# Before('@non-hopster') do |scenario|
#
#   caps = $emulators['emulators']['Nexus_5_API_23_x86']
#
#   puts "inside non-hopster before block"
#
#   Appium::Driver.new(caps)
#   Appium.promote_appium_methods AppiumWorld
#
#   puts "Execute anything before scenario/test case"
#   $driver.start_driver
#
# end
#
# After do |scenario|
#
#   $driver.driver_quit
#   puts "Execute anything after scenario/test case"
#
# end
