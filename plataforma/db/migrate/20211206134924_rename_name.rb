class RenameName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :name, :fullname
    rename_column :suppliers, :name, :fullname
  end
end
