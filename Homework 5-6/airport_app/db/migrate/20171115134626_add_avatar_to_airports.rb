class AddAvatarToAirports < ActiveRecord::Migration[5.1]
  def change
    add_column :airports, :avatar, :string
  end
end
