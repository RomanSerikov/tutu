class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :tickets
  has_many :trains, foreign_key: :current_station_id

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.station_position").uniq }

  # def update_position(route, position)
  #   railway_stations_routes.find_by(route: route).update(station_position: position)
  # end

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(station_position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:station_position)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
