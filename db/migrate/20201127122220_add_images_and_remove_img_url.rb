class AddImagesAndRemoveImgUrl < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :images, :string
    remove_column :images, :image_url, :string
  end
end
