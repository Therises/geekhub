class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image
      t.belongs_to :store, index: true
      t.timestamps
    end
  end
end
