class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.integer :id_usuario
      t.string :nombre
      t.string :apellido
      t.integer :celular
      t.string :foto
      t.string :sexo
      t.string :correo
      t.string :direccion
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
