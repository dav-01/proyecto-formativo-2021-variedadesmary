class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.integer :id_person
      t.string :last_name
      t.string :sex
      t.string :photo

      t.timestamps
    end
  end
end
