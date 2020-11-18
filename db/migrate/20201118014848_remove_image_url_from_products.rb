class RemoveImageUrlFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :img_url, :string
  end
end
