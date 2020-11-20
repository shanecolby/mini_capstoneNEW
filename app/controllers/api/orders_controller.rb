
class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity]
      )
    end
    
   
    render "show.json.jb"
  end
end
