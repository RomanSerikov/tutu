class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', optional: true
  
  has_many :tickets
  has_many :carriages

  def coupe_carriages
    choose_carriages('coupe')
  end

  def platscard_carriages
    choose_carriages('platscard')
  end

  private

  def choose_carriages(type)
    self.carriages.where(carriage_type: type)
  end
end
