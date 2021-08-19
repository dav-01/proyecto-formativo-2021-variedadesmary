class CreateCuenta < ActiveRecord::Migration[6.1]
  def change
    create_table :cuenta do |t|
      t.integer :cod_cuenta
      t.string :login
      t.string :rol
      t.integer :usuario
      t.string :contraseña

      t.timestamps
    end
  end
end
