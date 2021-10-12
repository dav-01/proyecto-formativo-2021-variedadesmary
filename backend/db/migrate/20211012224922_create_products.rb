class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :code_product
      t.string :name
      t.integer :price
      t.string :description
      t.string :characteristic
      t.string :mark
      t.string :kind
      t.integer :discount
      t.string :reference
      t.integer :code_supplier

      t.timestamps
    end
  end
end
