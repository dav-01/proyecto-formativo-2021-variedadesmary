class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :person
      t.string :company

      t.timestamps
    end
  end
end
