require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "do not save the company if name or start_week or 
    end_week or city or state or country_code or time_zone are missing" do
    company = Company.new
    assert_not company.save, "saved the company with missing start_week or end_week or city or state or country_code or time_zone"
  end

end
