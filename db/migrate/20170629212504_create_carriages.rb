class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.string :carriage_type, null: false
      t.integer :topseats, default: 0
      t.integer :botseats, default: 0

      t.timestamps
    end
  end
end
