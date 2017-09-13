class Sale < ApplicationRecord
  #include ActiveModel::Serializers::JSON
  belongs_to :company
  #before_save :calc_avg_week_sales
  validates_presence_of :sales_on_date, :company_id

  # def calc_avg_week_sales(company_id)
  #   current_company = Company.find(company_id)
  #   current_company.sales.select("week_number").group("week_number").count(:week_number).each do |key,value|
  #     avg_of_sales = (current_company.sales.where(week_number: key).sum(&:sales_on_date).to_f/value).round(3)
  #     current_company.sales.where(week_number: key).update(avg_week_sales: avg_of_sales)
  #   end
  # end

end



