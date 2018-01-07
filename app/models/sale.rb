class Sale < ApplicationRecord
  #include ActiveModel::Serializers::JSON
  belongs_to :company
  #before_save :calc_avg_week_sales
  validates_presence_of :sales_on_date, :company_id

  protected
    # def calc_avg_week_sales
    #   #check if value.nil? || key.nil? raise an error message
    #   current_company = Company.find(1)
    #   current_company.sales.select("week_number").group("week_number").count(:week_number).each do |key,value|
    #     avg_of_sales = (current_company.sales.where(week_number: key).sum(:sales_on_date)/value.to_f).round(3)
    #     current_company.sales.where(week_number: key).update_all(avg_week_sales: avg_of_sales)
    #   end
    #   true
    # end

end



