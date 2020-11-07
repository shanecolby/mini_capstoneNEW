class Api::ProductsController < ApplicationController
  def first
    @product = Product.last
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render "first.json.jb"
  end

  def total
    @products = Product.all
    render "all.json.jb"
  end
end
