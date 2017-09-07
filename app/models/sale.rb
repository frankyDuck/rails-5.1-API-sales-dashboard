class Sale < ApplicationRecord
  #include ActiveModel::Serializers::JSON
  belongs_to :company
  before_save :calc_avg_week_sales
  validates_presence_of :day1, :day2, :day3, :day4, :day5, :day6, :day7, :company_id

  def calc_avg_week_sales
    self.avg_week_sales = ((day1+day2+day3+day4+day5+day6+day7).to_f/7).round(3)
  end
end
