require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get list of companies" do
    get '/api/companies'
    assert_response 200
  end

  
end




