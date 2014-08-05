require 'rspec/expectations'
require 'selenium-webdriver'

class CalculatorScreen


attr_accessor :handle
# attr_writer :first_element, :second_element, :result
# attr_reader :button_element


  def initialize(handle)
    self.handle = handle
  end

  def first_element(attribute_key,attribute_value)
   handle.find_element(attribute_key.to_sym,attribute_value)
  end

  def second_element(attribute_key,attribute_value)
    handle.find_element(attribute_key.to_sym,attribute_value)
  end


  def result_element(attribute_key,attribute_value)
    handle.find_elements(attribute_key.to_sym,attribute_value)

  end


  def button_element(attribute_key,attribute_value)
  handle.find_elements(attribute_key.to_sym,attribute_value)

  end

end