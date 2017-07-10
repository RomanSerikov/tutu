class AddNumberToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_column :carriages, :number, :integer
  end
end
