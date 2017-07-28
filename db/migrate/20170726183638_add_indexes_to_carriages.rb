class AddIndexesToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_index :carriages, [:id, :type]
    add_index :carriages, :number, unique: true
  end
end
