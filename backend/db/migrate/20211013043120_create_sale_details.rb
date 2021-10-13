class CreateSaleDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :sale_details do |t|
      t.integer :code_sale_detail
      t.integer :code_sale
      t.string :product
      t.string :description
      t.integer :unit_value
      t.integer :total_value

      t.timestamps
    end
  end
end
