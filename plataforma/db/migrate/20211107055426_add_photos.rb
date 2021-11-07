class AddPhotos < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :photos, :string
  end
end
