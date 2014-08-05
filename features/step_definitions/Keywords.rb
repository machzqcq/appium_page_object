require 'rspec/expectations'
require 'selenium-webdriver'
require 'csv'


module Keywords
  APP_PATH = "../resources/TestApp.app"
  SERVER_URL = "http://127.0.0.1:4723/wd/hub"
  EXCEL_PATH="../resources/Workbook_csv.csv"

  def opencsv()
    @absolute_csv_path = File.join(File.dirname(__FILE__), EXCEL_PATH)
    @csv = CSV.read(@absolute_csv_path, :headers=>true)
  end

  def openApp()
    p Dir.pwd

    @absolute_app_path = File.join(File.dirname(__FILE__), APP_PATH)

    def desired_caps
      {
          'browserName' => '',
          'platform' => 'Mac',
          'device' => 'iPhone Simulator',
          'version' => '7.1',
          'app' => @absolute_app_path
      }
    end

    @driver1 ||= Selenium::WebDriver.for(:remote, :desired_capabilities => desired_caps, :url => SERVER_URL)
  end


  def closeApp
    @driver1.quit
  end

  def set_first_value(text_to_set)
    @screen = CalculatorScreen.new(@driver1)
    @csv
    first_element=@screen.first_element(@csv[0][4],@csv[0][5])
    first_element.send_keys text_to_set
  end

  def set_second_value(text_to_set)
    second_element = @screen.second_element(@csv[1][4],@csv[1][5])
    second_element.send_keys text_to_set
  end

  def click_button(button_index)
    button_element = @screen.button_element(@csv[2][4],@csv[2][5])[button_index.to_i - 1    ]
    button_element.click

  end

  def verify_text(expected)
    result_element = @screen.result_element(@csv[3][4],@csv[3][5])[0]
    p result_element.attribute("value")
    if (result_element.attribute("value")) == expected
      p "pass"
    end
    #expect(result_element.attribute("value")).to equal(expected.to_s)
    #result_element.attribute("value").should equal(expected)
    # gestures example
    @screen.handle.execute_script 'mobile: tap', :x => 150, :y => 30
  end

end