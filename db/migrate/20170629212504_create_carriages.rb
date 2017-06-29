class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.string :carriage_type
      t.integer :topseats
      t.integer :botseats

      t.timestamps
    end
  end
end
