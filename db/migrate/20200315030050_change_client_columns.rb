class ChangeClientColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :first_name
    remove_column :clients, :last_name
    add_column :clients, :email, :string
    add_column :clients, :name, :string
  end
end
