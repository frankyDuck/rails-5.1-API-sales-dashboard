class CompanySerializer < ActiveModel::Serializer
  attributes :name, :start_week, :end_week, :city, :state, :country_code, :time_zone 
end