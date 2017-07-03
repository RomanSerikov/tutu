class AddTrainIdToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :carriages, :train
  end
end
