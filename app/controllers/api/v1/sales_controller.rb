class Api::V1::SalesController < ApplicationController

	

  private

	def sale_params
    params.require(:sale).permit(:day1, :day2, :day3, :day4, :day5, :day6, :day7, :company_id)
	end	
end
