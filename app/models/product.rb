class Product < ApplicationRecord
  def tax
    tax = price * (0.09)
  end

  def is_discounted?
    if price < 10
      "true"
    else
      false
    end
  end

  def total
    total = price + tax
  end


  
end
