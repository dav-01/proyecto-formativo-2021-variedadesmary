class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.integer :nit_empresa
      t.string :logo
      t.string :tipo

      t.timestamps
    end
  end
end
