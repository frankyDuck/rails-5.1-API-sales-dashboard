class Api::V1::SalesController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
    if @company
      @sales = Sale.where(company_id: @company.id)
      render json: @sales 
    else  
      render status: 404
    end  
    
  end

  private

  def sale_params
    params.require(:sale).permit(:day1, :day2, :day3, :day4, :day5, :day6, :day7, :company_id)
  end
end
