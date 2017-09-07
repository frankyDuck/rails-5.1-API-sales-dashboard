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

  def new
    @sale = Sale.new
  end  

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      render json: @sale 
    else
      render status: 500
    end   
  end

    
  private

  def sale_params
    params.require(:sale).permit(:day1, :day2, :day3, :day4, :day5, :day6, :day7, 
      :company_id, :avg_week_sales)
  end
end
