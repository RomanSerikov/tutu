class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :tickets
  has_many :trains, foreign_key: :current_station_id

  def update_position(route, position)
    railway_stations_routes.find_by(route: route).update(station_position: position)
  end
end
