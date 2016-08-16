class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email, null: false
      t.text :description
      /t.string :image/

      t.timestamps null: false
    end
  end
end
