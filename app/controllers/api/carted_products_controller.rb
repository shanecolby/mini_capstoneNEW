class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @carted_products = current_user.carted_products.where(status: "carted")
      render "index.json.jb"
    else
      render json: "Sign into your account"
    end
  end

  def create
    # product = Product.find_by(id: params[:product_id])
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity], 
      status: "carted"
    )

    render "show.json.jb"
  end
end
