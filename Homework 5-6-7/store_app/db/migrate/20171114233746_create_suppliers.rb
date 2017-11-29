class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :image
      t.belongs_to :product

      t.timestamps
    end
  end
end
