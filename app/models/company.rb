class Company < ApplicationRecord
  #include ActiveModel::Serializers::JSON
  has_many :sales
  validates_presence_of :start_week, :end_week, :city, :state, :country_code, :time_zone
  
end
