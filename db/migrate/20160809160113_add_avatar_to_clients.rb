class AddAvatarToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :avatar, :string
  end
end
