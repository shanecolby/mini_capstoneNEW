class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def sub_total
    price
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
