class ChangePriceToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, percision: 8, scale: 2

  end
end