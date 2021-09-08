class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.integer :id_persona
      t.string :apellido
      t.string :sexo
      t.string :foto

      t.timestamps
    end
  end
end
