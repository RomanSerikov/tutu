class AddIndexesToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_index :carriages, [:id, :type]
  end
end
