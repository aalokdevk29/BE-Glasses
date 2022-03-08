class LensesController < ApplicationController
  before_action :authorize_request

  def index
    @lenses = Lense.all
    render json: @lenses, status: 200
  end
end