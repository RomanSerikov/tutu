class Search < ApplicationRecord
  def self.find_trains(start, finish)
    return if start == finish
    trains_start_st  = set_trains(start)
    trains_finish_st = set_trains(finish)

    trains_start_st & trains_finish_st
  end

  def self.set_trains(station)
    Train.joins(route: :railway_stations).where("railway_station_id = ? ", station)
  end
end
