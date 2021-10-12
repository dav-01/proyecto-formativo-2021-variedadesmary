class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :telephone
      t.string :sex
      t.string :address
      t.date :birth_date

      t.timestamps
    end
  end
end
