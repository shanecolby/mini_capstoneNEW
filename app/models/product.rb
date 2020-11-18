class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  # validates :price, numericality: { only_integer: true, greater_than: 1 }
  validates :description, length: { in: 10..500 }
  belongs_to :supplier
  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def tax
    price * (0.09)
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
