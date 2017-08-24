class Sale < ApplicationRecord
	#include ActiveModel::Serializers::JSON
	belongs_to :company
	validates_presence_of :day1, :day2, :day3, :day4, :day5, :day6, :day7, :company_id
end
