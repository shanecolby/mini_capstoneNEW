
class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id]
    
    calculated_subtotal = params[:quantity].to_i * product.price
    tax_rate = 0.09
    calculated_tax = params[:price] 
    calculated_total = 


    @order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      subtotal: 20, 
      tax:1.80, 
      total: 21.80
     )
   
    @order.save
    render "show.json.jb"
  end
end
