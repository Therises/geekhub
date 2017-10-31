class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end
