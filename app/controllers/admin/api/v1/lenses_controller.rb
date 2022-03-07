class Admin::Api::V1::LensesController < ApplicationController

  def create
    @lens = Lense.new(lense_params)
    if @lens.save
      render json: @lens
    else
      render json: { errors: @lens.errors.full_messages }
    end
  end

  private
  def lense_params
    params.permit(:colour, :description, :status, :prescription_type, :lens_type, :stock, :price)
  end
end