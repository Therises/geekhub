class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :image
      t.belongs_to :supplier, index: true
      t.timestamps
    end
  end
end
