require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  test "Do not save the sale record if sales_on_date and company_id are not present" do 
    sale = Sale.new
    assert_not sale.save, "Saved sale with one or more attributes missing."
  	
  end
end
