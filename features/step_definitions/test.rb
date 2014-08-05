require 'csv'

CSV.foreach('/Users/bhc480/appium/sample-code/examples/ruby/Workbook_csv.csv') do |row|
  #puts "#{row}"
end


arr_of_arrs = CSV.read("/Users/bhc480/appium/sample-code/examples/ruby/Workbook_csv.csv",:headers=>true)

p arr_of_arrs[0][0]