require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  test "Do not save the sale record if 
    day1 and day2 and day3 and day4 and day5 and day6 and day7 and company_id 
    are not be present" do 
    sale = Sale.new
    assert_not sale.save, "Saved sale with one or more attributes missing."
  	
  end
end
