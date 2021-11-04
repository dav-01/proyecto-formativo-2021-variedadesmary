class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :code_sale
      t.integer :code_customer
      t.integer :code_employee
      t.integer :code_product
      t.string :kind
      t.string :way_to_pay
      t.integer :amount
      t.date :date

      t.timestamps
    end
  end
end
