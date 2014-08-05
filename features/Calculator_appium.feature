Feature: Addition
  In order to revolutionize maths teaching
  As an iOS developer
  I want to be able to sum two numbers


  Scenario: Add two numbers in calculator
    Given I have entered 4 into field1 1 of the calculator app
    And I have entered 7 into field2 2 of the calculator app
    When I press button 1 on app
    Then the result should be displayed as 11 in total