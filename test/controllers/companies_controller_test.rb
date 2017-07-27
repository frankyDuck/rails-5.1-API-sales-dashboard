require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get list of companies" do
    get "/api/companies"
    assert_response 200
  end

  test "should get one company" do
    get "/api/companies/#{337561370}"
    json_data_one = JSON.parse response.body
    assert_equal 337561370, json_data_one["id"]
    assert_response 200
    #assert_equal company
  end

  test "should get a 404 response when requesting company with invalid ID" do
    assert_response 404 if get "/api/companies/#{337561377}"
    #puts response.status
  end


end




