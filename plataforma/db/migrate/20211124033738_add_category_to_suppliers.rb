class AddCategoryToSuppliers < ActiveRecord::Migration[6.1]

  def change
    add_column :suppliers, :category_id, :integer
  end

end
