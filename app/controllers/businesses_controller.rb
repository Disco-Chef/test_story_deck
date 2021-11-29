class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def show
    @business = Business.find(params[:id])
  end

  def index
    @businesses = Business.where(user: current_user)
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    if @business.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    if @business.update(business_params)
      redirect_to business_path(@business)
    else
      render :edit
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :description, :website)
  end

  def set_business
    @business = Business.find(params[:id])
  end
end
