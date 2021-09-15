class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.integer :nit_company
      t.string :logo
      t.string :kind

      t.timestamps
    end
  end
end
