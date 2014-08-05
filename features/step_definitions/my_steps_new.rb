require_relative 'Keywords'
include Keywords

Given(/^I have entered (\d+) into field1 (\d+) of the calculator app$/) do |value, arg2|
  openApp
  opencsv
  set_first_value(value)
end

And(/^I have entered (\d+) into field2 (\d+) of the calculator app$/) do |value, arg2|
  set_second_value(value)
end

When(/^I press button (\d+) on app$/) do |index|
  click_button(index)
end

Then(/^the result should be displayed as (\d+) in total$/) do |text_to_verify|
  verify_text(text_to_verify)
  closeApp
end


