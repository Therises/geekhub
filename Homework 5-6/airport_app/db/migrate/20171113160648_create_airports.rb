class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
