class AddClientColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :signature, :text
  end
end
