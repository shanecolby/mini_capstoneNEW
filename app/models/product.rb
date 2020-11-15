class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 1 }

  def tax
    tax = price * (0.09)
  end

  def is_discounted?
    price < 10
    # if price < 10
    #   true
    # else
    #   false
    # end
  end

  def total
    total = price + tax
  end


  
end
