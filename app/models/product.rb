class Product < ApplicationRecord
  def price_tax
    tax = price * (0.09)
    total = price - tax
  end
  
end
