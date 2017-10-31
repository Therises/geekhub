class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.string :model
      t.integer :yop

      t.timestamps
    end
  end
end
