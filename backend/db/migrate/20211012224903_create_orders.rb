class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :code_order
      t.integer :code_detail_order
      t.integer :code_customer
      t.integer :code_employee
      t.integer :code_product
      t.date :date

      t.timestamps
    end
  end
end
