require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  
  test "should find the company and return the sales for this company" do
    company_id = 337561370
    get "/api/companies/#{company_id}/sales"
    assert_response 200
  end
  
  

end
