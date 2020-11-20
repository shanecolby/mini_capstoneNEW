class Api::ProductsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  
  def index
    # @products = Product.all

    p "current_user"
    p current_user
    p "/current_user"

    if params[:search]
      @products = Product.where("name ILIKE '%#{params[:search]}%'")
    else 
      @products = Product.all
    end

   
    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    else
      @products = @products.order(id: :asc)
    end

    if params[:discount] == "true"
      @products = @products.where( "price < 20")
    end



  end
  
  def show
    p "current_user"
    p current_user
    p "/current_user"

    @product = Product.last
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      images: params[:images], 
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
    @product.images = params[:images]
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
