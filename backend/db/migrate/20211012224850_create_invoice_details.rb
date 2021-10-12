class CreateInvoiceDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_details do |t|
      t.integer :invoice_detail_code
      t.integer :code_invoice
      t.string :description
      t.integer :amount
      t.integer :unit_value
      t.integer :total_value

      t.timestamps
    end
  end
end
