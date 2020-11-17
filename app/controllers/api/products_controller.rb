class Api::ProductsController < ApplicationController
  
  def index
    # @products = Product.all
    search_term = params[:name]
    if search_term
      @products = Product.where("name ILIKE '%#{search_term}%'")
    else 
      @products = Product.all
    end

    # search_term2 = params[:sort]
    # if search_term2
    # @products = Product.order(price: :asc)

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
      name: params[:name], 
      price: params[:price], 
      img_url: params[:img_url], 
      description: params[:description]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name 
    @product.price = params[:price]
    @product.img_url = params[:img_url]
    @product.description = params[:description]
    @product.save
    
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product destroyed"}
  end

end
