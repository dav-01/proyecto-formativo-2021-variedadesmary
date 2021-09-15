class CreateClaims < ActiveRecord::Migration[6.1]
  def change
    create_table :claims do |t|
      t.integer :code_sale

      t.timestamps
    end
  end
end
