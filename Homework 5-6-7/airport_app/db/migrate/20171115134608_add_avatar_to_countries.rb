class AddAvatarToCountries < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :avatar, :string
  end
end
