class AddAvatarToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :avatar, :string
  end
end
