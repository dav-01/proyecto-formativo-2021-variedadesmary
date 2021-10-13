class CreateDetailOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :detail_orders do |t|
      t.integer :code_detail_order
      t.integer :code_order
      t.string :product
      t.string :description
      t.integer :unit_value
      t.integer :total_value

      t.timestamps
    end
  end
end
