class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', optional: true
  
  has_many :tickets
  has_many :carriages

  def count_seats(type, seats_type)
    carriages.type.sum(seats_type)
  end
end
