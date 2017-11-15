class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.belongs_to :passenger, index: true
      t.timestamps
    end
  end
end
