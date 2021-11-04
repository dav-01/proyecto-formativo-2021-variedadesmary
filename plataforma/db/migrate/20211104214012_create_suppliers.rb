class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.integer :code_supplier
      t.integer :id_person
      t.integer :nit_company
      t.string :name
      t.string :last_name
      t.string :kind
      t.string :sex
      t.string :email
      t.integer :telephone
      t.string :address

      t.timestamps
    end
  end
end
