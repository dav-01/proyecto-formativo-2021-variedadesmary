class CreatePqrs < ActiveRecord::Migration[6.1]
  def change
    create_table :pqrs do |t|
      t.integer :code_pqr
      t.integer :code_customer
      t.string :code_sale
      t.string :kind
      t.string :description
      t.string :state
      t.string :reference
      t.date :date
      t.string :code_kind

      t.timestamps
    end
  end
end
