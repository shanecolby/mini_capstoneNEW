class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render "index.json.jb"
  end
  
  def show
    @product = Product.last
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      img_url: params[:input_img_url], 
      description: params[:input_description])
      @product.save
   
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:update_name]
    @product.price = params[:update_price]
    @product.img_url = params[:update_img_url]
    @product.description = params[:update_description]
    @product.save
    
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product destroyed"}
  end

end
