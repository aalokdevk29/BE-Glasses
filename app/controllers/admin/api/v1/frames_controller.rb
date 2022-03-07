class Admin::Api::V1::FramesController < ApplicationController

  def create
    @frame = Frame.new(frame_params)
    if @frame.save
      render json: @frame
    else
      render json: { errors: @frame.errors.full_messages }
    end
  end

  private
  def frame_params
    params.permit(:name, :description, :status, :stock, :price)
  end
end