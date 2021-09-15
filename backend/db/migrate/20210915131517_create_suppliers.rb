class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.integer :code_supplier
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :address

      t.timestamps
    end
  end
end
