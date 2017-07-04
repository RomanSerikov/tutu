class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.integer :topseats,       default: 0
      t.integer :botseats,       default: 0
      t.integer :side_top_seats, default: 0
      t.integer :side_bot_seats, default: 0
      t.integer :chair_seats,    default: 0
      t.string  :type

      t.timestamps
    end
  end
end
