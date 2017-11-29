class AddAvatarToPlanes < ActiveRecord::Migration[5.1]
  def change
    add_column :planes, :avatar, :string
  end
end
