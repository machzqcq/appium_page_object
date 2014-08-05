require 'rspec/expectations'
require 'selenium-webdriver'

class CalculatorScreen

attr_accessor :handle
attr_writer :first_element, :second_element, :result
attr_reader :button_element


  def initialize(handle)
    @handle = handle
  end

  def first_element=(attribute_key,attribute_value)
    @first_element=@handle.find_elements(attribute_key.to_sym,attribute_value)
  end

  def second_element=(attribute_key,attribute_value)
    @second_element=handle.find_elements(attribute_key.to_sym,attribute_value)
  end

  def first_element
    @first_element
  end

  def second_element
    @second_element
  end

  def result=(attribute_key,attribute_value)
    @result = handle.find_elements(attribute_key.to_sym,attribute_value)
  end

  def result
    @result
  end

  def button_element=(attribute_key,attribute_value)
  @button_element = handle.find_elements(attribute_key.to_sym,attribute_value)
  end

end