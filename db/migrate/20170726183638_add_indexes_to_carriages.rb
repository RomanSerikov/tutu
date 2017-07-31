class AddIndexesToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_index :carriages, [:id, :type]
    add_index :carriages, [:number, :train_id], unique: true
  end
end
