class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :phone
      t.string :uen
      t.integer :studio_count

      t.timestamps
    end
  end
end
