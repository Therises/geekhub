class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
