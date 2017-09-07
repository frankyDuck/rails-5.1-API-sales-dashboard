class Api::V1::CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
    render json: @companies, status: 200
  end

  def show
    @company = Company.find(params[:id])
    @company ? (render json: @company) : (render status: 404)
  end  

  private
  
  def company_params
    params.require(:company).permit(:name, :start_week, :end_week, :city, :state, :country_code, :time_zone)
  end

end