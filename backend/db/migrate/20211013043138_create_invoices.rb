class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.integer :code_invoice
      t.integer :code_sale
      t.date :date

      t.timestamps
    end
  end
end
