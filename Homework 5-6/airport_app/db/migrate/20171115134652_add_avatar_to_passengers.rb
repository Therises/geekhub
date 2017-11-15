class AddAvatarToPassengers < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :avatar, :string
  end
end
