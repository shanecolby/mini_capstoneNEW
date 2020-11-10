class Api::ProductsController < ApplicationController
  def show
    @product = Product.last
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render "show.json.jb"
  end

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    render "create.json.jb"
  end

end
