class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', optional: true
  
  has_many :tickets
  has_many :carriages

  def coupe_carriages
    choose_carriages('Купе')
  end

  def coupe_top_seats
    count_seats(coupe_carriages, :topseats)
  end

  def coupe_bot_seats
    count_seats(coupe_carriages, :botseats)
  end

  def platscard_carriages
    choose_carriages('Плацкарт')
  end

  def platscard_top_seats
    count_seats(platscard_carriages, :topseats)
  end

  def platscard_bot_seats
    count_seats(platscard_carriages, :botseats) 
  end

  private

  def choose_carriages(type)
    self.carriages.where(carriage_type: type)
  end

  def count_seats(carriages, type)
    carriages.map(&type).reduce(0, :+)
  end
end
