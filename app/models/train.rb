class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', optional: true
  
  has_many :tickets
  has_many :carriages

  def count_seats(car_type, seats_type)
    carriages.where(type: car_type.to_s.camelize).sum(seats_type)
  end
end
