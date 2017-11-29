class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
    	t.string :name
    	t.belongs_to :plane, index: true
      t.timestamps
    end
  end
end
