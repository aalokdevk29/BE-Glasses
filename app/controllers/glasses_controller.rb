class GlassesController < ApplicationController
  before_action :authorize_request
  before_action :set_lens, :set_frame, only: [:create]

  def create
    if @lense.stock > 0 && @frame.stock > 0
      @price = set_glass_price
      @glass = Glass.create(frame_id: params[:frame_id].to_i, lense_id: params[:lense_id].to_i, price: @price)
      
      if @glass.save
        decrement_stocks
        render json: @glass
      else
        render json: { errors: @glass.errors.full_messages }
      end
    
    else
      render json: { errors: "Out of Stock" }
    end
  end  

  private

  def set_glass_price
    @sum_price = @lense.price + @frame.price
    @price = Concurrency.convert(@sum_price, "USD", @current_user.currency)
  end  

  def decrement_stocks
    @lens = Lense.find(@glass.lense_id).decrement(:stock)
    @frame = Frame.find(@glass.frame_id).decrement(:stock)
    @lens.save
    @frame.save
  end  

  def glass_params
    params.permit(:frame_id, :lense_id, :price)
  end

  def set_lens
    @lense = Lense.find(params[:lense_id])
  end  

  def set_frame
    @frame = Frame.find(params[:frame_id])
  end

end