class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @carted_products = current_user.carted_products
    else
      render json: "Sing into your account"
    end
  end

  def create
    # product = Product.find_by(id: params[:product_id])
    @carted_product = CartedProduct.create(product_id: params[:product_id],quantity: params[:quantity],)

    render "index.json.jb"
  end
end
