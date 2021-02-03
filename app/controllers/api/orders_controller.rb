
class Api::OrdersController < ApplicationController
  
  
  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end
  
  
  def create

    carted_products = current_user.carted_products.where(status: "carted")

    subtotal = 0
    carted_products.each do |cp|
      subtotal += cp.product.price * cp.quantity
    end

    tax_rate = 0.9
    tax = subtotal * tax_rate
    total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,)

    @order.save

    carted_products.each do |cp|
      cp.update(status: "purchased", order_id: @order_id)


    end

    render "show.json.jb"

  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
