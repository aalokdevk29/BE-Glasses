class FramesController < ApplicationController
  before_action :authorize_request

  def index
    @frames = Frame.where(status: :active)
    render json: @frames
  end
end