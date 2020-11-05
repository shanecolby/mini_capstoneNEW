class Api::ProductsController < ApplicationController
  def first
    @product = Product.last
    render "first.json.jb"
  end

  def total
    @products = Product.all
    render "all.json.jb"
  end
end
