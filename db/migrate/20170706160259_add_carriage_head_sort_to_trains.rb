class AddCarriageHeadSortToTrains < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :head_sort, :boolean, default: true
  end
end
